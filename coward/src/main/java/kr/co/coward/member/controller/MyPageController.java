package kr.co.coward.member.controller;

import java.io.IOException;
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

	@GetMapping("/companyProfile")
	public String companyProfile() {

		return "mypage/mypage-company-editProfile";

	}

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

	// 기업 프로필 사진 변경
	@PostMapping("/profileImg")
	public String updateCompanyProfile(@ModelAttribute("loginMember") Member loginMember,
			@RequestParam("uploadImage") MultipartFile uploadImage /* 업로드 파일 */
			, @RequestParam Map<String, Object> map /* delete 담겨있음 */
			, HttpServletRequest req /* 파일 저장 경로 탐색용 */
			, RedirectAttributes ra) throws IOException {

		// 경로 작성하기

		// 1) 웹 접근 경로
		String webPath = "/resources/assets/images/";

		// 2) 서버 저장 폴더 경로
		String folderPath = req.getSession().getServletContext().getRealPath(webPath);

		// map에 경로 2개, 이미지, delete, 회원번호 담기
		map.put("webPath", webPath);
		map.put("folderPath", folderPath);
		map.put("uploadImage", uploadImage);
		map.put("memberNo", loginMember.getMemberNo());

		int result = service.updateCompanyProfile(map);

		String message = null;

		if (result > 0) {
			message = "프로필 이미지가 변경되었습니다.";

			// DB-세션 동기화

			// 서비스 호출 시 전달된 map은 실제로는 주소만 전달(얕은복사)
			// -> 서비스에서 추가된 "profileImage"는 원본 map에 그대로 남아있음~!

			loginMember.setProfileImg((String) map.get("profileImg"));

		} else {
			message = "프로필 이미지 변경 실패하였습니다.";
		}

		ra.addFlashAttribute("message", message);

		return "redirect:companyProfile";
	}

	// 기업 회원정보 변경
	@PostMapping("/companyProfile")
	public String updateCompanyInfo(@ModelAttribute("loginMember") Member loginMember,
			@RequestParam Map<String, Object> paramMap, RedirectAttributes ra) {

		// logger.info("로그인 정보 테스트");
		// logger.info("loginMember :" + loginMember);

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

		} else {
			message = "회원 정보 수정이 실패하였습니다.";

		}

		ra.addFlashAttribute("message", message);

		return "redirect:companyProfile";

	}

}
