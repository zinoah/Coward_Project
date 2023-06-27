package kr.co.coward.contest.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.coward.contest.model.vo.Contest;

@Repository
public class ContestDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;

	private Logger logger = LoggerFactory.getLogger(ContestDAO.class);
	
	/** 
	 * 진행중인 공모전 10개 리스트 조회 DAO
	 */
	public List<Contest> getContestList() {
		return sqlSession.selectList("contestMapper.getContestList");
	}
}
