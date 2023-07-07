package kr.co.coward.chat.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import kr.co.coward.chat.model.service.ChatService;

@Controller
@SessionAttributes({ "loginMember", "crNo" })
public class ChattingController {

	@Autowired
	private ChatService service;

	@GetMapping("/chat")
	public String chat() {

		return "chat/chat";

	}

}
