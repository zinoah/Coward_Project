package kr.co.coward.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import kr.co.coward.member.model.service.MyPageService;

@Controller
@RequestMapping("/mypage/myPage")
@SessionAttributes({"loginMember"}) // session scope에서 loginMember를 얻어옴
public class MyPageController {

	@Autowired
	private MyPageService service;

	// 회원 정보 조회(메인)
	@GetMapping("/info")
	public String info() {
		return "mypage/person-main";
	}
	
	
	// 공모전 관리
	@GetMapping("/progress")
	public String progress() {
		return "mypage/contest-progress";
	}
}
