package kr.co.coward.contest.model.dao;

import java.util.List;
import java.util.Map;

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
	private Contest contest;

	private Logger logger = LoggerFactory.getLogger(ContestDAO.class);

	/**
	 * 진행중인 공모전 10개 리스트 조회 DAO
	 */
	public List<Contest> getContestList(String type) {

		String mapperPath = null;

		switch (type) {
		case "default":
			mapperPath = "contestMapper.getDefaultContestList";
			break;
		case "new":
			mapperPath = "contestMapper.getNewContestList";
			break;
		case "popular":
			mapperPath = "contestMapper.getPopularContestList";
			break;
		}

		return sqlSession.selectList(mapperPath);

	}

	/**
	 * 공모전 개최
	 * 
	 * @param paramMap
	 * @return
	 */
	public int contestCreate(Map<String, Object> paramMap) {

		// TODO Auto-generated method stub
		int result = sqlSession.insert("contestMapper.contestCreate", paramMap);

		if (result > 0)
			result = (int) paramMap.get("contestNo");

		System.out.println(result);

		return result;

	}
}
