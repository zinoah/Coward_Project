package kr.co.coward.member.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
import org.springframework.web.bind.annotation.SessionAttributes;
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

	@GetMapping("/testLogin")
	public String login(/* @ModelAttribute */ Member inputMember, Model model, RedirectAttributes ra,
			HttpServletRequest request) {

		logger.info("로그인 기능 수행됨");

		String id = "test01";
		String pw = "pass01!";


		String referer = request.getHeader("Referer");

		Member testLoginMember = new Member();

		testLoginMember.setMemberId(id);
		testLoginMember.setMemberPw(pw);

		Member loginMember = service.testLogin(testLoginMember);

		if (loginMember != null) { // login 성공 시
			model.addAttribute("loginMember", loginMember); // -> req.setAttribute("loginMember", loginMember);

		} else {

			ra.addFlashAttribute("message", "로그인에 실패하였습니다.");
		}

		if (referer != null && !referer.isEmpty()) {
			return "redirect:" + referer;
		} else {
			return "redirect:/"; // 기본적인 홈페이지로 이동하도록 설정
		}
	}


	@GetMapping("/findDev")
	public String findDev(Model model) {
		
		int pageSize = 6; // 한 페이지당 가져올 데이터 개수 -> 2와 3의 공배수가 보기 예쁨
		
		// 개발자 리스트 조회
		List<Member> devList = service.getFindDevPage(pageSize);
		
		// 개발자 리스트 적재
		model.addAttribute("devList", devList);
  
  	return "find-developer";
}
		


	@PostMapping("/login")
	public String login(@ModelAttribute Member inputMember, Model model, RedirectAttributes ra,
			HttpServletResponse resp, HttpServletRequest req,
			@RequestParam(value = "saveId", required = false) String saveId) {

		logger.info("로그인 기능 수행됨");

		Member loginMember = service.login(inputMember);

		return "redirect:/";

	}


	@GetMapping("/terms")
	public String terms() {
		return "terms";
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
		return "member/pw-find";
	}

	// 회원가입
	@PostMapping("/signUp")
	public String signUp(@ModelAttribute Member member) {
		System.out.println(member.toString());

		service.insertMember(member);

		return "common/home";
	}
}
