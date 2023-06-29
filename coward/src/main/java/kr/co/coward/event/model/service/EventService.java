package kr.co.coward.event.model.service;

import java.util.List;

import kr.co.coward.event.model.vo.Event;

public interface EventService {

	/**
	 * 전체 이벤트 목록 조회 서비스
	 * 
	 * @return eventList
	 */
	List<Event> getEventList(int offset, int pageSize);

	/**
	 * 이벤트 상세 조회 서비스
	 * 
	 * @param eventNo
	 * @return event
	 */
	Event getEvent(int eventNo);

}
