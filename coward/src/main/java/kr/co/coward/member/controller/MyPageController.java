package kr.co.coward.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.coward.member.model.service.MyPageService;

@Controller
@RequestMapping("/mypage")
public class MyPageController {

	@Autowired
	private MyPageService service;

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
