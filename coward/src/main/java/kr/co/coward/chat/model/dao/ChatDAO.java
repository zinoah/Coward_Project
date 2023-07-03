package kr.co.coward.chat.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.coward.chat.model.vo.ChatMessage;
import kr.co.coward.chat.model.vo.ChatRoom;
import kr.co.coward.chat.model.vo.ChatRoomJoin;

@Repository
public class ChatDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	/**
	 * 채팅방 목록 조회
	 * @return chatRoomList
	 */
	public List<ChatRoom> selectChatRoomList() {

		return sqlSession.selectList("chattingMapper.selectChatRoomList");
	}

	
	/**
	 * 채팅방 만들기
	 * @param room
	 * @return
	 */
	public int openChatRoom(ChatRoom room) {
		
		int result = sqlSession.insert("chattingMapper.openChatRoom", room);
		
		if(result > 0) return room.getChatRoomNo();
		return 0;
		
	}


	/** 채팅방 참여 여부 확인
	 * @param join
	 * @return result
	 */
	public int joinCheck(ChatRoomJoin join) {
		return sqlSession.selectOne("chattingMapper.joinCheck", join);
	}
	
	
	/** 채팅방 참여하기
	 * @param join
	 */
	public void joinChatRoom(ChatRoomJoin join) {
		sqlSession.insert("chattingMapper.joinChatRoom", join);
	}

	
	/** 채팅 메세지 목록 조회
	 * @param chatRoomNo
	 * @return list
	 */
	public List<ChatMessage> selectChatMessage(int chatRoomNo) {
		return sqlSession.selectList("chattingMapper.selectChatMessage", chatRoomNo);
	}


	/** 채팅 메세지 삽입
	 * @param cm
	 * @return result
	 */
	public int insertMessage(ChatMessage cm) {
		return sqlSession.insert("chattingMapper.insertMessage", cm);
	}

}
