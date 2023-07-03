package kr.co.coward.chat.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.coward.chat.model.service.ChatService;
import kr.co.coward.chat.model.vo.ChatMessage;
import kr.co.coward.chat.model.vo.ChatRoom;
import kr.co.coward.chat.model.vo.ChatRoomJoin;
import kr.co.coward.member.model.vo.Member;



@Controller
@SessionAttributes({"loginMember", "crNo"})
public class ChattingController {
	
	@Autowired
	private ChatService service;
	
	// 메세지 방
	@GetMapping("/chat/messageRoom")
	public String messageRoom() {
		
		return "chat/chatMessage";
	}
	
	
	
	// 채팅방 목록 조회
	@GetMapping("/chat/roomList")
	public String chattingList(Model model) {
		
		List<ChatRoom> chatRoomList = service.selectChatRoomList();
		
		model.addAttribute("chatRoomList", chatRoomList);
		
		return "chat/chatRoomList";
	}

	
	// 채팅방 만들기 -> 개발자 찾기 페이지에서 채팅 하기 누르면 INSERT
	@PostMapping("/chat/openChatRoom")
	public String openChatRoom(@ModelAttribute("loginMember") Member loginMember, Model model,
								ChatRoom room, RedirectAttributes ra) {
		
		room.setMemberNo(loginMember.getMemberNo());
		
		int chatRoomNo = service.openChatRoom(room);
		
		String path = "redirect:/chat/chatRoomList";
		
		return path;
	}
	
	// 채팅방 입장
		@GetMapping("/chat/room/{chatRoomNo}")
		public String joinChatRoom(@ModelAttribute("loginMember") Member loginMember, Model model,
									@PathVariable("chatRoomNo") int chatRoomNo, 
									ChatRoomJoin join,
									RedirectAttributes ra) {
			
			join.setMemberNo(loginMember.getMemberNo());
			List<ChatMessage> list = service.joinChatRoom(join);
			
			if(list != null) {
				model.addAttribute("list", list);
				model.addAttribute("chatRoomNo", chatRoomNo); // session에 올림
				return "chat/chatRoomList";
			}
			else {
				ra.addFlashAttribute("message","채팅방이 존재하지 않습니다.");
				return "redirect:../chatRoomList";
			}
			
		}
}
