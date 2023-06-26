package kr.co.coward.contest.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.coward.contest.model.service.ContestService;

@Controller
@RequestMapping("/contest")
public class ContestController {

	private Logger logger = LoggerFactory.getLogger(ContestController.class);

	@Autowired
	private ContestService service;

	@RequestMapping("/main")
	public String contestMain() {

		return "contest/contest-main";
	}

	@RequestMapping("/create")
	public String contestCreate() {

		return "contest/contest-create";
	}

	@GetMapping("/recommend")
	public String contestRecommend() {
		return "contest/contest-recommend";
	}

}
