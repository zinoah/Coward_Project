package kr.co.coward.member.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.coward.member.model.service.MemberService;
import kr.co.coward.member.model.vo.Member;

@Controller
@RequestMapping("/member")
@SessionAttributes({ "loginMember" })
public class MemberController {

	@Autowired
	private MemberService service;

	private Logger logger = LoggerFactory.getLogger(MemberController.class);

	@GetMapping("/testLogin")
	public String login(/* @ModelAttribute */ Member inputMember, Model model, RedirectAttributes ra) {

		logger.info("濡쒓렇�씤 湲곕뒫 �닔�뻾�맖");

		String id = "test01";
		String pw = "pass01!";

		Member testLoginMember = new Member();

		testLoginMember.setMemberId(id);
		testLoginMember.setMemberPw(pw);

		Member loginMember = service.login(testLoginMember);

		if (loginMember != null) { // login �꽦怨� �떆
			model.addAttribute("loginMember", loginMember); // -> req.setAttribute("loginMember", loginMember);

		} else {

			ra.addFlashAttribute("message", "�븘�씠�뵒 �삉�뒗 鍮꾨�踰덊샇媛� �씪移섑븯吏� �븡�뒿�땲�떎.");
		}

		return "redirect:/";
	}
}
