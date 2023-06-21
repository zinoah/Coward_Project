package kr.co.coward.event.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/event")
public class EventController {

	@GetMapping("/main")
	public String eventMainForawrd() {
		return "event-main";
	}

	@GetMapping("/detail/1")
	public String eventDetailForward() {
		return "event-detail";
	}

}
