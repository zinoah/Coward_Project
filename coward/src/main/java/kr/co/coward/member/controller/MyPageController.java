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
@SessionAttributes({"loginMember"}) // session scope���� loginMember�� ����
@RequestMapping("/mypage")
public class MyPageController {

	@Autowired
	private MyPageService service;


	// 마이페이지(메인)
	@GetMapping("/info")
	public String info() {
		return "mypage/person-main";
	}
	
	
	// 공모전 관리
	@GetMapping("/progress")
	public String progress() {
		return "mypage/contest-progress";
	}
	
	// 내 정보 수정
	@GetMapping("/editP")
	public String editP() {
		return "mypage/edit-profile";
	}
	
	@PostMapping("/editP")
	public String updateInfo(@ModelAttribute("loginMember") Member loginMember,
							@RequestParam("editImg")MultipartFile editImg, /* ��ε� ���� */
							@RequestParam Map<String, Object> paramMap,
							String[] updateAddress,
							HttpServletRequest req, /* ���� ���� ��� Ž��� */
							RedirectAttributes ra) {
		
		
		System.out.println(loginMember);
		// 회원정보 수정 서비스 호출
		int result = service.updateInfo(paramMap);
		
		String message = null;
		
		if(result > 0) {
			message = "회원정보가 수정되었습니다.";
			
			// DB - Session의 회원정보 동기화(얕은 복사 활용)
			
			loginMember.setMemberNick( (String)paramMap.get("updateNickname")); // 닉네임
			loginMember.setStack( (String)paramMap.get("userStack")); // 스택
			loginMember.setSlogan((String)paramMap.get("slogan")); // 한줄 소개
			loginMember.setIntroduce((String)paramMap.get("introduce")); // 소개
			loginMember.setSkill((String)paramMap.get("skill")); // 기술
			
		} else {
			message = "회원정보 수정에 실패하였습니다";
		}
		
		ra.addFlashAttribute("message", message);
		
		
		return "redirect:/info";
	}
			

	@GetMapping("/company-main")
	public String companyMain() {
		return "mypage/mypage-company-main";
	}

	@GetMapping("/company-management")
	public String companyManagement() {
		return "mypage/mypage-company-management";
	}

	@GetMapping("/company-profile")
	public String companyProfile() {
		return "mypage/mypage-company-editProfile";
	}


}
