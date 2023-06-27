package kr.co.coward.member.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.coward.member.model.service.MyPageService;
import kr.co.coward.member.model.vo.Member;

@Controller
@SessionAttributes({ "loginMember" }) // session scope���� loginMember�� ����
@RequestMapping("/mypage")
public class MyPageController {

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
	@GetMapping("/company-profile")
	public String companyProfile() {
		return "mypage/mypage-company-editProfile";
	}

	@Autowired
	private MyPageService service;

	// 회원 정보 조회
	@GetMapping("/info")
	public String info() {
		return "mypage/person-main";
	}

	// ����� ��
	@GetMapping("/progress")
	public String progress() {
		return "mypage/contest-progress";
	}

	// ȸ����� ���
	@GetMapping("/editP")
	public String editP() {
		return "mypage/edit-profile";
	}

	// 기업 프로필 변경
	@PostMapping("companyProfile")
	public String updateCompanyInfo(@ModelAttribute("loginMember") Member loginMember,
			@RequestParam Map<String, Object> paramMap, // 요청 시 전달된 파라미터를 구분하지 않고 모두 Map에 담아서 얻어옴
			String[] updateAddress, RedirectAttributes ra) {

// 회원 정보 수정 서비스 호출
		int result = service.updateCompanyInfo(paramMap);

		String message = null;

		if (result > 0) {
			message = "회원 정보가 수정되었습니다.";

// DB - Session의 회원정보 동기화(얕은 복사 활용)
			loginMember.setMemberNick((String) paramMap.get("updateNickname"));
			loginMember.setIntroduce((String) paramMap.get("updateIntroduce"));

		} else {
			message = "회원 정보 수정 실패...";

		}

		ra.addFlashAttribute("message", message);

		return "redirect:info";

	}

	@PostMapping("/editP")
	public String updateInfo(@ModelAttribute("loginMember") Member loginMember,
			@RequestParam("editImg") MultipartFile editImg, /* ��ε� ���� */
			@RequestParam Map<String, Object> paramMap, String[] updateAddress, HttpServletRequest req, /*
																										 * ���� ���� ���
																										 * Ž���
																										 */
			RedirectAttributes ra) {

		System.out.println(loginMember);
		// ȸ�� ��� ��� ���� ȣ��
		int result = service.updateInfo(paramMap);

		String message = null;

		if (result > 0) {
			message = "ȸ�� ����� ����Ǿ��ϴ�.";

			// DB - Session�� ȸ����� ����ȭ(��� ���� Ȱ��)

			loginMember.setMemberNick((String) paramMap.get("updateNickname")); // �г���
			loginMember.setStack((String) paramMap.get("userStack")); // ����
			loginMember.setSlogan((String) paramMap.get("slogan")); // ���� �Ұ�
			loginMember.setIntroduce((String) paramMap.get("introduce")); // �Ұ�
			loginMember.setSkill((String) paramMap.get("skill")); // �� ���

		} else {
			message = "ȸ�� ��� ��� ����";
		}

		ra.addFlashAttribute("message", message);

		return "redirect:/info";
	}

}
