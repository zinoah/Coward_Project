package kr.co.coward.chat.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.coward.chat.model.service.ChatService;
import kr.co.coward.chat.model.vo.ChatRoom;
import kr.co.coward.member.model.vo.Member;

@Controller
@SessionAttributes({ "loginMember", "crNo" })
public class ChattingController {

	@Autowired
	private ChatService service;

	// 채팅방 목록 조회
	@GetMapping("/chat/roomList")
	public String chattingList(Model model) {
		
		List<ChatRoom> chatRoomList = service.selectChatRoomList();
		
		model.addAttribute("chatRoomList", chatRoomList);
		
		return "chat/chat";
	}
	
	// 채팅방 만들기
		@PostMapping("/chat/openChatRoom")
		public String openChatRoom(@ModelAttribute("loginMember") Member loginMember, Model model, 
									ChatRoom room, RedirectAttributes ra) {
			
			room.setMemberNo(loginMember.getMemberNo());
			
			int chatRoomNo = service.openChatRoom(room);
			
			String path = "redirect:/chat/";
			
			if(chatRoomNo > 0) {
				path += "room/" + chatRoomNo;
			}else {
				path += "roomList";
				ra.addFlashAttribute("message","채팅방 만들기 실패");
			}
			
			return path;
		}

}
