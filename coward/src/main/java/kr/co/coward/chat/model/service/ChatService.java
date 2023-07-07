package kr.co.coward.chat.model.service;

import kr.co.coward.chat.model.vo.ChatMessage;

public interface ChatService {

	/**
	 * 메세지 추가 서비스
	 * 
	 * @param chatMessage
	 * @return
	 */
	int insertMessage(ChatMessage chatMessage);

}
