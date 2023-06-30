package kr.co.coward.ranking.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import kr.co.coward.member.model.vo.Member;
import kr.co.coward.ranking.model.service.RankingService;

@Controller
public class RankingController {

	@Autowired
	private RankingService service;

	/**
	 * 랭킹 메인 페이지로 Forward 요청
	 * 
	 * @return
	 */
	@GetMapping("/ranking")
	public String rankingForward(Model model) {

		// 상금왕 정보 조회
		List<Member> priceKingList = service.getPriceKingList(10); // 10 == offset

		// 우승왕 정보 조회
		List<Member> victoryKingList = service.getVictoryKingList(10); // 10 == offset

		// 인기왕 정보 조회
		List<Member> likeKingList = service.getLikeKingList(10); // 10 == offset

		// 데이터 적재
		model.addAttribute("priceKingList", priceKingList);
		model.addAttribute("likeKingList", likeKingList);
		model.addAttribute("victoryKingList", victoryKingList);

		return "ranking";
	}
}
