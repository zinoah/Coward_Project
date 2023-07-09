package kr.co.coward.member.controller;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.google.gson.Gson;

import kr.co.coward.contest.model.vo.Contest;
import kr.co.coward.contest.model.vo.ContestAttend;
import kr.co.coward.member.model.service.MyPageService;
import kr.co.coward.member.model.vo.Member;
//import kr.co.coward.member.model.vo.Region;

@Controller
@SessionAttributes({ "loginMember" })
@RequestMapping("/mypage")
public class MyPageController {

	private Logger logger = LoggerFactory.getLogger(MyPageController.class);

	@Autowired
	private MyPageService service;

	// 마이페이지 이동하는 공통 버튼

	@GetMapping("/memberTypeInfo")
	public String memberTypeInfo(@ModelAttribute("loginMember") Member loginMember) {
		String memberType = loginMember.getMemberType();

		String redirectUrl = null;

		if (memberType.equals("P")) {
			redirectUrl = "/mypage/info";
		} else if (memberType.equals("C")) {
			redirectUrl = "/mypage/companyMain";
		} else {
			// 다른 조건에 대한 처리
		}

		return "redirect:" + redirectUrl;
	}

	// 기업 마이페이지

	// 마이페이지(메인)
	// 회원 정보 조회
//	@GetMapping("/info/${memberNo}")
//	public String info(@PathVariable("contestNo") int memberNo, Model model) {
//
//		Member member = service.mypageInfo(memberNo);
//
//		String[] temp = member.getSkill().split(",");
//
//		List<String> skillList = Arrays.asList(temp);
//
//		model.addAttribute("member", member);
//		model.addAttribute("skillList", skillList);
//
//		return "mypage/person-main";
//	}

	// 마이페이지(메인)
	// 회원 정보 조회
	@GetMapping("/info")
	public String info() {
		return "mypage/person-main";
	}

	// 기업 마이페이지 프로필수정 이동
	@GetMapping("/companyProfile")
	public String companyProfile() {

		return "mypage/mypage-company-editProfile";

	}

	// 공모전 관리
	@GetMapping("/progress")
	public String progress() {
		return "mypage/contest-progress";
	}


	// 공모전 관리
	@GetMapping("/exchange")
	public String exchange() {
		return "mypage/credit-exchange";
	}
	
	// 내 정보 수정으로 이동(일반 회원)
	@GetMapping("/editP")
	public String editP() {
		return "mypage/edit-profile";
	}

	/**
	 * 내 정보 수정 (일반 회원)
	 */
	@PostMapping("/editP")
	public String updateInfo(@ModelAttribute("loginMember") Member loginMember,
			@RequestParam("uploadImage") MultipartFile uploadImage, @RequestParam Map<String, Object> paramMap,
			String[] skill, HttpServletRequest req, RedirectAttributes ra) throws IOException {

		String skillList = String.join(",", skill);

		// 웹 접근경로
		String webPath = "resources/assets/images/dummy/profile-img/";

		// 서버 저장 폴더 경로
		String folderPath = req.getSession().getServletContext().getRealPath(webPath);

		int MemberNo = loginMember.getMemberNo();
		paramMap.put("memberNo", MemberNo);

		paramMap.put("webPath", webPath);
		paramMap.put("folderPath", folderPath);
		paramMap.put("skill", skillList);
		paramMap.put("uploadImage", uploadImage);

		// 회원정보 수정 서비스 호출
		int result = service.updateInfo(paramMap);

		String message = null;

		if (result > 0) {
			message = "회원 정보가 수정되었습니다.";

			loginMember.setMemberNick((String) paramMap.get("updateNickname")); // 닉네임
			loginMember.setStack((String) paramMap.get("stack")); // 스택
			loginMember.setSlogan((String) paramMap.get("slogan")); // 한줄 소개
			loginMember.setIntroduce((String) paramMap.get("introduce")); // 소개
			loginMember.setSkill((String) paramMap.get("skill")); // 내 기술
			loginMember.setProfileImg((String) paramMap.get("profileImg")); // 프로필 사진

		} else {
			message = "회원정보 수정에 실패하였습니다";
		}

		ra.addFlashAttribute("message", message);

		return "redirect:info";
	}

	// 마이페이지 - 공모전 목록 조회
	@GetMapping("/conProgress")
	public String conProgress() {
		return "mypage/contest-progress";
	}

//	@ResponseBody
//	@PostMapping("/conProgress")
//	public List<ContestAttend> getConProgress(@ModelAttribute("loginMember") Member loginMember, @RequestParam String attendStatus) {
//		
//		int memberNo = loginMember.getMemberNo();
//		
//		List<ContestAttend> conProgress = service.getConProgress(attendStatus, memberNo);
//		
//		return conProgress;
//	}

	/**********************************
	 * 기업 마이페이지 controller
	 **********************************/

	// 기업이 관심있는 개발자 조회

	// 기업 회원정보 변경
	@PostMapping("/companyProfile")
	public String updateCompanyInfo(@ModelAttribute("loginMember") Member loginMember,
			@RequestParam("uploadImage") MultipartFile uploadImage, @RequestParam Map<String, Object> paramMap,
			HttpServletRequest req, RedirectAttributes ra) throws IOException {

		// logger.info("로그인 정보 테스트");
		// logger.info("loginMember :" + loginMember);

		paramMap.put("memberNo", loginMember.getMemberNo());

		// 경로 작성하기

		// 1) 웹 접근 경로
		String webPath = "resources/assets/images/dummy/profile-img/";

		// 2) 서버 저장 폴더 경로
		String folderPath = req.getSession().getServletContext().getRealPath(webPath);

		// map에 경로 2개, 이미지, delete, 회원번호 담기
		paramMap.put("webPath", webPath);
		paramMap.put("folderPath", folderPath);
		paramMap.put("uploadImage", uploadImage);
		paramMap.put("memberNo", loginMember.getMemberNo());

		// 회원정보 수정 서비스 호출
		int result = service.updateCompanyInfo(paramMap);

		// logger.info("Result 값 확인: " + result);

		String message = null;

		if (result > 0) {

			message = "회원 정보가 수정되었습니다.";

			// DB - Session의 회원정보 동기화(얕은 복사 활용)
			loginMember.setMemberNick((String) paramMap.get("memberNick"));
			loginMember.setIntroduce((String) paramMap.get("introduce"));
			loginMember.setProfileImg((String) paramMap.get("profileImg"));

		} else {
			message = "회원 정보 수정이 실패하였습니다.";

		}

		ra.addFlashAttribute("message", message);

		return "redirect:companyProfile";

	}

	// 기업 마이페이지 메인(공모전 관리 조회)
	/*
	 * @ResponseBody
	 * 
	 * @PostMapping("/companyMain") public List<Contest>
	 * mainContestList(@ModelAttribute("loginMember") Member loginMember,
	 * 
	 * @RequestParam String conStatus) {
	 * 
	 * logger.info("컨트롤러 수행"); logger.info("Received conStatus: " + conStatus);
	 * 
	 * int memberNo = loginMember.getMemberNo();
	 * 
	 * List<Contest> contestList = service.getContestList(conStatus, memberNo);
	 * 
	 * for (Contest c : contestList) { System.out.println(c); }
	 * 
	 * return contestList;
	 * 
	 * // logger.info("mainContestList() 메서드 실행 결과: " + mainContestList);
	 * 
	 * // return new Gson().toJson(mainContestList); }
	 */

	// 기업 마이페이지 공모전관리 이동
	@GetMapping("/companyManagement")
	public String companyManagement(@ModelAttribute("loginMember") Member loginMember, Model model) {

		int memberNo = loginMember.getMemberNo();

		// 참가자 리스트
		List<Contest> contestList = service.getContestList("전체", memberNo);

		model.addAttribute("contestList", contestList);

		return "mypage/mypage-company-management";
	}

	// 기업 마이페이지 내 공모전 관리
	@ResponseBody
	@PostMapping("/companyManagement")
	public List<Contest> getContestList(@ModelAttribute("loginMember") Member loginMember,
			@RequestParam String conStatus) {

		logger.info("컨트롤러 수행");
		logger.info("Received conStatus: " + conStatus);

		int memberNo = loginMember.getMemberNo();

		List<Contest> contestList = service.getContestList(conStatus, memberNo);

		for (Contest c : contestList) {
			System.out.println(c);
		}

		return contestList;
	}

	// 기업 마이페이지 메인페이지 이동
	@GetMapping("/companyMain")
	public String companyMain(@ModelAttribute("loginMember") Member loginMember, Model model) {

		int memberNo = loginMember.getMemberNo();
		// 관심있는 개발자 목록 조회하기

		logger.info("컨트롤러 수행");
		logger.info("loginMember :" + loginMember);

		List<Member> developerLikeList = service.developerLikeList(memberNo);

		model.addAttribute("developerLikeList", developerLikeList);

		logger.info("developerLikeList() 메서드 실행 결과: " + developerLikeList);

		return "mypage/mypage-company-main";

	}

	@ResponseBody
	@PostMapping("/companyMain")
	public List<Contest> getContestListTwo(@ModelAttribute("loginMember") Member loginMember,
			@RequestParam String conStatus) {

		logger.info("컨트롤러 수행");
		logger.info("Received conStatus: " + conStatus);

		int memberNo = loginMember.getMemberNo();

		List<Contest> contestList = service.getContestList(conStatus, memberNo);

		for (Contest c : contestList) {
			System.out.println(c);
		}

		return contestList;
	}

	// 동적 카드를 클린한 후 우승자 선정페이지 이동
	@GetMapping("winnerSelect/{contestNo}")
	public String winnerSelect(@PathVariable("contestNo") int contestNo, String stack, Model model,
			@RequestParam Map<String, Object> paramMap) {

		// 참가자 리스트
		List<Member> member = service.winnerSelect(contestNo, stack);
		model.addAttribute("member", member);

		// 콘테스트 정보 불러오기
		List<Contest> contest = service.winnerSelectContest(contestNo);
		model.addAttribute("contest", contest);

		// 모달창 정보 불러오기

		/*
		 * logger.info("콘테스트 넘버 : " + contestNo); // logger.info("멤버 넘버 : " + memberNo);
		 * 
		 * // paramMap.put("memberNo", memberNo); paramMap.put("contestNo", contestNo);
		 * 
		 * List<ContestAttend> contestAttend = service.contestAttendInfo(paramMap);
		 * 
		 * logger.info("참가자 리스트: " + contestAttend);
		 */
		return "mypage/winnerSelect";

	}

	// 동적으로 모달창 정보 불러오기
	@ResponseBody
	@PostMapping("winnerSelect/{contestNo}")
	public String contestAttendModal(@RequestParam int memberNo, @PathVariable int contestNo,
			@RequestParam Map<String, Object> paramMap, Model model) {

		logger.info("받아온 memberNo : " + memberNo);
		logger.info("받아온 contestNo : " + contestNo);

		paramMap.put("memberNo", memberNo);
		paramMap.put("contestNo", contestNo);

		List<ContestAttend> contestAttend = service.contestAttendInfo(paramMap);

		logger.info("불러온 리스트 멤버" + contestAttend);

		return new Gson().toJson(contestAttend);

	}

}
