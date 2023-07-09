package kr.co.coward.chat.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.coward.chat.model.vo.ChatRoom;

@Repository
public class ChatDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;

	/** 채팅방 목록 조회
	 * @return  chatRoomList
	 */
	public List<ChatRoom> selectChatRoomList() {
		return sqlSession.selectList("chattingMapper.selectChatRoomList");
	}

	/** 채팅방 만들기
	 * @param room
	 * @return chatRoomNo
	 */
	public int openChatRoom(ChatRoom room) {
		
		int result = sqlSession.insert("chattingMapper.openChatRoom", room);
		
		if(result > 0) return room.getChatRoomNo();
		return 0; 
	}

}
