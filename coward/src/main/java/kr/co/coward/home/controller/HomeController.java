package kr.co.coward.home.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.coward.contest.model.service.ContestService;
import kr.co.coward.contest.model.vo.Contest;
import kr.co.coward.member.model.vo.Member;
import kr.co.coward.ranking.model.service.RankingService;

@Controller
public class HomeController {

	@Autowired
	private ContestService contestService;

	@Autowired
	private RankingService rankingService;

	@RequestMapping("/home")
	public String mainForward(Model model) {

		// 1-1. 진행중인 공모전 10개 정보 받아오기
		// CON_STATUS = (심사중, 진행중, 완료)
		List<Contest> contestList = contestService.getContestList("default");

		// 2. 랭킹 분야별 1~3위 받아오기
		List<Member> priceKingList = rankingService.getPriceKingList(3); // 3 == offset
		List<Member> victoryKingList = rankingService.getVictoryKingList(3); // 10 == offset
		List<Member> likeKingList = rankingService.getLikeKingList(3); // 3 == offset

		// 3. 신규 등록된 공모전 10개 정보 받아오기
		List<Contest> newContestList = contestService.getContestList("new");

		model.addAttribute("contestList", contestList);
		model.addAttribute("priceKingList", priceKingList);
		model.addAttribute("victoryKingList", victoryKingList);
		model.addAttribute("likeKingList", likeKingList);
		model.addAttribute("newContestList", newContestList);

		return "common/home";
	}
}
