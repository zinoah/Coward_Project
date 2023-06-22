package kr.co.coward.main.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

	@RequestMapping("/home")
	public String mainForward() {

		return "common/home"; // DispatcherServlet이 받을거다! -> View Resolver
	}
}
