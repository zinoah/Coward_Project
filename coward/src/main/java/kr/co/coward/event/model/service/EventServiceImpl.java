package kr.co.coward.event.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.coward.event.model.dao.EventDAO;
import kr.co.coward.event.model.vo.Event;

@Service
public class EventServiceImpl implements EventService {

	@Autowired
	private EventDAO dao;

	// 전체 이벤트 목록 조회 서비스
	@Override
	public List<Event> getEventList() {
		return dao.getEventList();
	}

	// 이벤트 상세 조회 서비스
	@Override
	public Event getEvent(int eventNo) {
		return dao.getEvent(eventNo);
	}

}
