package kr.co.coward.member.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.coward.member.model.service.MemberService;
import kr.co.coward.member.model.vo.Member;

@Controller
@RequestMapping("/member")
@SessionAttributes({ "loginMember" })
public class MemberController {

	private Logger logger = LoggerFactory.getLogger(MemberController.class);

	@Autowired
	private MemberService service;

//	@GetMapping("/testLogin")
//	public String login(/* @ModelAttribute */ Member inputMember, Model model, RedirectAttributes ra,
//			HttpServletRequest request) {
//
//		logger.info("로그인 기능 수행됨");
//
//		String id = "test01";
//		String pw = "pass01!";
//
//		String referer = request.getHeader("Referer");
//
//		Member testLoginMember = new Member();
//
//		testLoginMember.setMemberId(id);
//		testLoginMember.setMemberPw(pw);
//
//		Member loginMember = service.login(testLoginMember);
//
//		if (loginMember != null) { // login 성공 시
//			model.addAttribute("loginMember", loginMember); // -> req.setAttribute("loginMember", loginMember);
//
//		} else {
//
//			ra.addFlashAttribute("message", "로그인에 실패하였습니다.");
//		}
//
//		if (referer != null && !referer.isEmpty()) {
//			return "redirect:" + referer;
//		} else {
//			return "redirect:/"; // 기본적인 홈페이지로 이동하도록 설정
//		}
//	}

	// 여기서부터 작업!
	@PostMapping("/login") 
	public String login( @ModelAttribute Member inputMember 
			, Model model
			, RedirectAttributes ra
			, HttpServletResponse resp 
			, HttpServletRequest req
			, HttpSession session
			, @RequestParam(value="saveId", required = false) String saveId) {
		
		logger.info("로그인 기능 수행됨");
		System.out.println(inputMember.toString());
		
		Member loginMember = service.login(inputMember);       
		
		
		if(loginMember != null) {
			session.setAttribute("loginMember", loginMember);
			
			// 로그인 성공했을 때 쿠키생성하기
			Cookie cookie = new Cookie("saveId", loginMember.getMemberId());

			// 아이디 저장 체크하면 쿠키 계속 유지
			if (saveId != null) {
				cookie.setMaxAge(60 * 60 * 24 * 365);
			} else { // 체크 안했으면 바로 삭제
				cookie.setMaxAge(0);
			}

			cookie.setPath(req.getContextPath());
			resp.addCookie(cookie);

		} else { // 로그인 실패
			ra.addFlashAttribute("message", "아이디 또는 비밀번호가 일치하지 않습니다.");
		}

		return "redirect:/";

	}

	// 이메일 중복 검사
	@ResponseBody
	@GetMapping("/emailDupCheck")
	public int emailDupCheck(String memberEmail) {
		int result = service.emailDupCheck(memberEmail);

		return result;

	}

	// 이메일로 인증번호 보내기
	@GetMapping("/sendEmail")
	@ResponseBody
	public String sendEmail(String memberEmail) {

		System.out.println(memberEmail);

		int result = service.sendEmail(memberEmail);

		return "success";
	}

	// 발급한 인증번호와 입력한 인증번호가 맞는지 확인
	@ResponseBody
	@GetMapping("/emailCertChk")
	public int emailCertChk(String memberEmail, String cNumber) {

		int result = service.emailCertChk(memberEmail, cNumber);

		return result;
	}

	// 회원가입 화면 이동
	@GetMapping("/join")
	public String join() {
		return "member/join";
	}

	// 로그인 화면 이동
	@GetMapping("/login")
	public String login() {
		return "member/login";
	}

	// 비밀번호 찾기 이동
	@GetMapping("/pwFind")
	public String pwFind() {
		return "member/pwFind";
	}

	// 회원가입
	@PostMapping("/signUp")
	public String signUp(@ModelAttribute Member inputMember, RedirectAttributes ra) {

		System.out.println(inputMember.toString());
		
		// Note: 닉네임 랜덤 생성
		
		String[] adjArr = {"예쁜", "화난", "귀여운", "배고픈", "철학적인", "현학적인", "슬픈", "푸른", "비싼", "밝은"};
		String[] nArr = {"호랑이", "비버", "강아지", "부엉이", "여우", "치타", "문어", "고양이", "미어캣", "다람쥐"};
		
		int random1 = (int)Math.floor(Math.random() * adjArr.length);
		System.out.println(random1);
		int random2 = (int)Math.floor(Math.random() * nArr.length);
		System.out.println(random2);
		int random3 = (int)(Math.random()*100);
		System.out.println(random3);
		int random4 = (int)(Math.random()*100);
		System.out.println(random4);
		String randomNick = adjArr[random1] + nArr[random2] + random3 + random4;
		
		inputMember.setMemberNick(randomNick);
		
		// 회원 생성		
		int insert = service.insertMember(inputMember);
		
		// 메세지 출력 및 path 설정
		String message = null;
		String path = null;

		if (insert > 0) {
			message = "회원 가입 성공";
			path = "redirect:/";

		} else {
			message = "회원 가입 실패";
			path = "redirect:/member/join"; // 회원 가입 페이지
		}
		ra.addFlashAttribute("message", message);

		return path;
	}

	// 회원 탈퇴페이지 이동
	@GetMapping("/secession")
	public String secession() {
		return "member/secession";
	}

	// 회원 탈퇴
	@PostMapping("/secession")
	public String secession(@ModelAttribute("loginMember") Member loginMember, SessionStatus status,
			HttpServletRequest req, HttpServletResponse resp, RedirectAttributes ra) {

		int result = service.secession(loginMember);

		String message = null;
		String path = null;

		if (result > 0) {
			message = "탈퇴 완료 되었습니다.";
			path = "/";

			status.setComplete();

			Cookie cookie = new Cookie("saveId", "");
			cookie.setMaxAge(0);
			cookie.setPath(req.getContextPath());
			resp.addCookie(cookie);

		} else {
			message = "현재 비밀번호가 일치하지 않습니다.";
			path = "secession";
		}

		ra.addFlashAttribute("message", message);

		return "redirect:" + path;
	}

	// Note: 개발자 찾기 진입 시 GET 요청
	@GetMapping("/findDev")
	public String findDev(Model model) {

		int pageSize = 12; // 한 페이지당 가져올 데이터 개수
		int offset = 0;

		// 개발자 리스트 조회
		List<Member> devList = service.getFindDevPage(pageSize, offset);

		// 개발자 리스트 적재
		model.addAttribute("devList", devList);

		return "find-developer";
	}

	@ResponseBody
	@PostMapping("/findDev")
	public List<Member> findDevAjax(Model model, @RequestParam int page) {

		int pageSize = 6; // 한 페이지당 가져올 데이터 개수
		int offset = page * pageSize; // OFFSET 계산

		// 개발자 리스트 조회
		List<Member> devList = service.getFindDevPage(pageSize, offset);

		return devList;
	}

	@GetMapping("/terms")
	public String terms() {
		return "terms";
	}

	//로그아웃
	@GetMapping("/logout")
	public String logout(SessionStatus status) {
		
		logger.info("로그아웃 수행됨");
		
		status.setComplete(); 
		
		return "redirect:/"; 
		
	}
	
	// 비밀번호 변경 페이지 이동
	@GetMapping("/changePw")
	public String changePw() {
		return "member/changePw";
	}
	
	// 비밀번호 변경
	@PostMapping("/changePw")
	public String changePw(@RequestParam Map<String, Object> paramMap,
						   @ModelAttribute("loginMember") Member loginMember,
						   HttpSession session,
						   RedirectAttributes ra) {
		
		  	loginMember = (Member) session.getAttribute("loginMember");
		    if (loginMember == null) {
		        // 로그인되지 않은 상태로 비밀번호 변경 페이지에 접근한 경우 처리
		        // 적절한 경로로 리다이렉트 또는 오류 메시지를 설정하여 처리할 수 있습니다.
		        return "redirect:/login"; // 로그인 페이지로 리다이렉트
		    }

		    paramMap.put("memberNo", loginMember.getMemberNo());
		
		paramMap.put("memberNo", loginMember.getMemberNo());
	
		int result = service.changePw(paramMap);
		
		String message = null;
		String path = null;
		
		if(result > 0) {
			message = "비밀번호가 변경되었습니다.";
			path = "common/main";
			
	        
		}else {
			message = "현재 비밀번호가 일치하지 않습니다.";
			path = "changePw";
		}
		
		ra.addFlashAttribute("message", message);
		
		return "redirect:" + path;
  }
	

}
