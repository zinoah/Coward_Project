package kr.co.coward.contest.model.dao;

import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ContestDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;

	private Logger logger = LoggerFactory.getLogger(ContestDAO.class);

	public int contestCreate(Map<String, Object> paramMap) {

		// TODO Auto-generated method stub
		return sqlSession.insert("contestMapper.contestCreate", paramMap);
	}
}
