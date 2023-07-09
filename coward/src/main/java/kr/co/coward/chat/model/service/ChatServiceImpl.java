package kr.co.coward.chat.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.coward.chat.model.dao.ChatDAO;
import kr.co.coward.chat.model.vo.ChatMessage;
import kr.co.coward.chat.model.vo.ChatRoom;

@Service
public class ChatServiceImpl implements ChatService {

	@Autowired
	private ChatDAO dao;

	// 채팅 목록 조회
	@Override
	public List<ChatRoom> selectChatRoomList() {
		return dao.selectChatRoomList();
	}

	// 채팅방 만들기
	@Override
	public int openChatRoom(ChatRoom room) {
		return dao.openChatRoom(room);
	}

	@Override
	public int insertMessage(ChatMessage chatMessage) {
		// TODO Auto-generated method stub
		return 0;
	}

}
