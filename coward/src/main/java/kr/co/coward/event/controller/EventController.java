package kr.co.coward.event.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.coward.event.model.service.EventService;
import kr.co.coward.event.model.vo.Event;

@Controller
@RequestMapping("/event")
public class EventController {

	@Autowired
	private EventService service;

	// event-main 으로 진입 요청
	@GetMapping("/main")
	public String eventMainForawrd(Model model) {

		int pageSize = 8; // 한 페이지당 가져올 데이터 개수
		int offset = 0; // OFFSET 계산

		// 이벤트 리스트 조회
		List<Event> eventList = service.getEventList(offset, pageSize);

		// 이벤트 리스트 적재
		model.addAttribute("eventList", eventList);

		// event-main으로 이동 요청
		return "event-main";
	}

	@GetMapping("/detail/{eventNo}")
	public String eventDetailForward(@PathVariable("eventNo") int eventNo, Model model) {
		// 1. 이벤트 상세 조회
		Event event = service.getEvent(eventNo);

		// 2. 조회된 이벤트 적재
		model.addAttribute(event);

		// 3. 이동
		return "event-detail";
	}

	@ResponseBody
	@PostMapping("/list")
	public List<Event> getEventListAjax(@RequestParam int page) {

		int pageSize = 8; // 한 페이지당 가져올 데이터 개수
		int offset = page * pageSize; // OFFSET 계산

		// 이벤트 리스트 조회
		List<Event> eventList = service.getEventList(offset, pageSize);

		// 값 자체 전달
		return eventList;
	}
}
