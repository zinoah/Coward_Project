package kr.co.coward.event.model.dao;

import java.util.HashMap;
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

	/**
	 * 전체 이벤트 목록 조회 DAO
	 * 
	 * @return eventList
	 */
	public List<Event> getEventsByPage(int offset, int pageSize) {
		Map<String, Object> params = new HashMap<>();
		params.put("offset", offset);
		params.put("pageSize", pageSize);

		return sqlSession.selectList("eventMapper.getEventsByPage", params);
	}

	/**
	 * 이벤트 상세 조회 서비스
	 * 
	 * @param eventNo
	 * @return event
	 */
	public Event getEvent(int eventNo) {
		return sqlSession.selectOne("eventMapper.getEvent", eventNo);
	}

}
