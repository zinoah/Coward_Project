package kr.co.coward.chat.model.service;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.coward.chat.model.dao.ChatDAO;
import kr.co.coward.chat.model.vo.ChatMessage;
import kr.co.coward.chat.model.vo.ChatRoom;
import kr.co.coward.chat.model.vo.ChatRoomJoin;
import kr.co.coward.common.Util;

@Service
public class ChatServiceImpl implements ChatService{

	@Autowired
	private ChatDAO dao;

	// 채팅방 목록 조회
	@Override
	public List<ChatRoom> selectChatRoomList() {

		return dao.selectChatRoomList();
	}

	// 채팅방 만들기
	@Override
	public int openChatRoom(ChatRoom room) {
		
		return dao.openChatRoom(room);
	}

	// 채팅방 입장 + 내용 얻어오기
		@Override
		public List<ChatMessage> joinChatRoom(ChatRoomJoin join) {

			// 현재 회원이 해당 채팅방에 참여하고 있는지 확인
			int result = dao.joinCheck(join);
			
			if(result == 0) { // 참여하고 있지 않은 경우 참여
				dao.joinChatRoom(join);
			}
			
			// 채팅 메세지 목록 조회
			return dao.selectChatMessage(join.getChatRoomNo());
		}

		// 채팅 메세지 삽입
		@Override
		public int insertMessage(ChatMessage cm) {
			
//			cm.setMessage(Util.XSSHandling(cm.getMessage()));
			cm.setMessage(Util.newLineHandling(cm.getMessage()));
			
			return dao.insertMessage(cm);
		}
}
