package kr.co.coward.member.controller;

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
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.coward.contest.model.vo.Contest;
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

	// 기업 마이페이지

	// 기업 마이페이지 메인페이지 이동
	@GetMapping("/company-main")
	public String companyMain() {

		return "mypage/mypage-company-main";

	}

	// 기업 마이페이지 공모전관리 이동
	@GetMapping("/company-management")
	public String companyManagement() {
		return "mypage/mypage-company-management";
	}

	// 기업 마이페이지 프로필수정 이동
	/*
	 * @GetMapping("/companyProfile") public String companyProfile(Model model) {
	 * 
	 * List<Region> regionList = service.allRegions();
	 * 
	 * model.addAttribute("regionList", regionList);
	 * 
	 * return "mypage/mypage-company-editProfile"; }
	 */

	// 마이페이지(메인)
	// 회원 정보 조회
	@GetMapping("/info")
	public String info() {
		return "mypage/person-main";
	}

	// 공모전 관리
	// @GetMapping("/progress")
	// public String progress() {
	// return "mypage/contest-progress";
	// }

	// 공모전 목록 조회
	@GetMapping("/progress")
	public String contestList(Model model) {
		List<Contest> progress = MyPageService.contestList();
		model.addAttribute("progress", progress);

		return "mypage/contest-progress";
	}

	// 내 정보 수정(일반 회원)
	@GetMapping("/editP")
	public String editP() {
		return "mypage/edit-profile";
	}

	// 일반회원 프로필 변경
	@PostMapping("/editP")
	public String updateInfo(@ModelAttribute("loginMember") Member loginMember,
			@RequestParam("editImg") MultipartFile editImg, /* ��ε� ���� */
			@RequestParam Map<String, Object> paramMap, String[] updateAddress, HttpServletRequest req,
			RedirectAttributes ra) {

		System.out.println(loginMember);
		// 회원정보 수정 서비스 호출
		int result = service.updateInfo(paramMap);

		String message = null;

		if (result > 0) {
			message = "회원 정보가 수정되었습니다.";

			loginMember.setMemberNick((String) paramMap.get("updateNickname")); // 닉네임
			loginMember.setStack((String) paramMap.get("userStack")); // 스택
			loginMember.setSlogan((String) paramMap.get("slogan")); // 한줄 소개
			loginMember.setIntroduce((String) paramMap.get("introduce")); // 소개
			loginMember.setSkill((String) paramMap.get("skill")); // 내 기술

		} else {
			message = "회원정보 수정에 실패하였습니다";
		}

		ra.addFlashAttribute("message", message);

		return "redirect:info";
	}

	/**********************************
	 * 기업 마이페이지 controller
	 **********************************/

	// 기업 프로필 변경 회원정보
	@PostMapping("/companyProfile")
	public String updateCompanyInfo(@ModelAttribute("loginMember") Member loginMember,
			@RequestParam Map<String, Object> paramMap, // 요청 시 전달된 파라미터를 구분하지 않고 모두 Map에 담아서 얻어옴
			RedirectAttributes ra) {

		logger.info("로그인 정보 테스트");
		logger.info("loginMember :" + loginMember);

		paramMap.put("memberNo", loginMember.getMemberNo());

		// 회원정보 수정 서비스 호출
		int result = service.updateCompanyInfo(paramMap);

		logger.info("Result 값 확인: " + result);

		String message = null;

		if (result > 0) {

			message = "회원 정보가 수정되었습니다.";

			// DB - Session의 회원정보 동기화(얕은 복사 활용)
			loginMember.setMemberNick((String) paramMap.get("memberNick"));
			loginMember.setIntroduce((String) paramMap.get("introduce"));

		} else {
			message = "회원 정보 수정이 실패하였습니다.";

			logger.info((String) paramMap.get("memberNick"));
			logger.info((String) paramMap.get("introduce"));

		}

		ra.addFlashAttribute("message", message);

		return "redirect:companyProfile";

	}

}
