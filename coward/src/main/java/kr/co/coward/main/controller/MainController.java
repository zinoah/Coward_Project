package kr.co.coward.main.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

	@RequestMapping("/main")
	public String mainForward() {

		return "common/main"; // DispatcherServlet이 받을거다! -> View Resolver
	}
}
