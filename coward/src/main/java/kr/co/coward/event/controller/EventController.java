package kr.co.coward.event.controller;

import java.security.Provider.Service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

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
		// 1. 이벤트 리스트 조회
		List<Event> eventList = service.getEventList();
		
		// 2. 이벤트 리스트 적재
		model.addAttribute("eventList", eventList);
		
		// 3. event-main으로 이동 요청
		return "event-main";
	}

	@GetMapping("/detail/1")
	public String eventDetailForward() {
		return "event-detail";
	}

}
