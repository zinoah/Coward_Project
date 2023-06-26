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


	// ȸ�� ��� �ȸ(����)
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
	
	@PostMapping("/editP")
	public String updateInfo(@ModelAttribute("loginMember") Member loginMember,
							@RequestParam("editImg")MultipartFile editImg, /* ��ε� ���� */
							@RequestParam Map<String, Object> paramMap,
							String[] updateAddress,
							HttpServletRequest req, /* ���� ���� ��� Ž��� */
							RedirectAttributes ra) {
		
		
		System.out.println(loginMember);
		// ȸ�� ��� ��� ���� ȣ��
		int result = service.updateInfo(paramMap);
		
		String message = null;
		
		if(result > 0) {
			message = "ȸ�� ����� ����Ǿ��ϴ�.";
			
			// DB - Session�� ȸ����� ����ȭ(��� ���� Ȱ��)
			
			loginMember.setMemberNick( (String)paramMap.get("updateNickname")); // �г���
			loginMember.setStack( (String)paramMap.get("userStack")); // ����
			loginMember.setSlogan((String)paramMap.get("slogan")); // ���� �Ұ�
			loginMember.setIntroduce((String)paramMap.get("introduce")); // �Ұ�
			loginMember.setSkill((String)paramMap.get("skill")); // �� ���
			
		} else {
			message = "ȸ�� ��� ��� ����";
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
