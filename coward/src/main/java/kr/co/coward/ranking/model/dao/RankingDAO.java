package kr.co.coward.ranking.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.coward.member.model.vo.Member;

@Repository
public class RankingDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;

	/**
	 * 상금순으로 정렬된 멤버 리스트 조회 DAO
	 * 
	 * @return priceKingList
	 */
	public List<Member> getPriceKingList(int offset) {
		return sqlSession.selectList("memberMapper.getPriceKingList", offset);
	}

	/**
	 * 우승횟수 순으로 정렬된 멤버 리스트 조회 DAO
	 * 
	 * @return victoryKingList
	 */
	public List<Member> getVictoryKingList(int offset) {
		return sqlSession.selectList("memberMapper.getVictoryKingList", offset);
	}

	/**
	 * 좋아요 순으로 정렬된 멤버 리스트 조회 DAO
	 * 
	 * @return likeKingList
	 */
	public List<Member> getLikeKingList(int offset) {
		return sqlSession.selectList("memberMapper.getLikeKingList", offset);
	}

}
