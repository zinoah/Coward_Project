package kr.co.coward.ranking.model.service;

import java.util.List;

import kr.co.coward.member.model.vo.Member;

public interface RankingService {

	/**
	 * 상금순으로 정렬된 멤버 리스트 조회 서비스
	 * 
	 * @return priceKingList
	 */
	List<Member> getPriceKingList(int offset);

	/**
	 * 우승횟수 순으로 정렬된 멤버 리스트 조회 서비스
	 * 
	 * @return victoryKingList
	 */
	List<Member> getVictoryKingList(int offset);

	/**
	 * 좋아요 순으로 정렬된 멤버 리스트 조회 서비스
	 * 
	 * @return likeKingList
	 */
	List<Member> getLikeKingList(int offset);
}
