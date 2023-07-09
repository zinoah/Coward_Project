package kr.co.coward.chat.model.service;

import java.util.List;

import kr.co.coward.chat.model.vo.ChatMessage;
import kr.co.coward.chat.model.vo.ChatRoom;

public interface ChatService {

	/**
	 * 채팅 목록 조회
	 * 
	 * @return chatRoomList
	 */
	List<ChatRoom> selectChatRoomList();

	/**
	 * 채팅방 만들기
	 * 
	 * @param room
	 * @return chatRoomNo
	 */
	int openChatRoom(ChatRoom room);

	int insertMessage(ChatMessage chatMessage);

}
