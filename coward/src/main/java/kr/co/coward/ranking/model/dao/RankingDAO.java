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

	/** 상금순으로 정렬된 멤버 리스트 조회 DAO
	 * @return
	 */
	public List<Member> getPriceKingList() {
		return sqlSession.selectList("contestMapper.getPriceKingList");
	}
	
	
	
}
