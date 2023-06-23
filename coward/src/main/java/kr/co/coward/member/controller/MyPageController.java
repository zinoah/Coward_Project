package kr.co.coward.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import kr.co.coward.member.model.service.MyPageService;

@Controller
public class MyPageController {

	@Autowired
	private MyPageService service;

}
