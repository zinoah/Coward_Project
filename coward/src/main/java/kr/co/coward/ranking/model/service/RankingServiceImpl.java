package kr.co.coward.ranking.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.coward.member.model.vo.Member;
import kr.co.coward.ranking.model.dao.RankingDAO;

@Service
public class RankingServiceImpl implements RankingService {

	@Autowired
	private RankingDAO dao;

	// 상금순으로 정렬된 멤버 리스트 조회 서비스
	@Override
	public List<Member> getPriceKingList(int offset) {
		return dao.getPriceKingList(offset);
	}

	// 우승횟수 순으로 정렬된 멤버 리스트 조회 서비스
	@Override
	public List<Member> getVictoryKingList(int offset) {
		return dao.getVictoryKingList(offset);
	}

	// 좋아요 순으로 정렬된 멤버 리스트 조회 서비스
	@Override
	public List<Member> getLikeKingList(int offset) {
		return dao.getLikeKingList(offset);
	}

}
