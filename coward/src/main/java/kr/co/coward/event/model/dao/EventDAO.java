package kr.co.coward.event.model.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.coward.contest.model.dao.ContestDAO;
import kr.co.coward.event.model.vo.Event;

@Repository
public class EventDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	private Logger logger = LoggerFactory.getLogger(ContestDAO.class);

	public List<Event> getEventList() {
		return sqlSession.selectList("eventMapper.getEventList");
	}

}
