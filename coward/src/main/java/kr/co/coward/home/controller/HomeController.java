package kr.co.coward.home.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.coward.contest.model.service.ContestService;
import kr.co.coward.contest.model.vo.Contest;



@Controller
public class HomeController {
	
	@Autowired
	private ContestService contestService;

	@RequestMapping("/home")
	public String mainForward(Model model) {
		
		// 1. 진행중인 공모전 10개 정보 받아오기
		// CON_STATUS = (심사중, 진행중, 완료)
		List<Contest> contestList = contestService.getContestList();
		
		model.addAttribute(contestList);
		
		// 2. 랭킹 분야별 1~3위 받아오기
		
		// 3. 신규 등록된 공모전 10개 정보 받아오기 
		List<Contest> newContestList = contestService.getNewContestList();

		return "common/home"; 
	}
}
