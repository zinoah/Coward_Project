package kr.co.coward.chat.model.vo;

import java.sql.Date;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@ToString
public class ChatRoom {
	private int chatRoomNo;
	private Date crProduce;
	private int memberNo;
	private String memberNick;
	private String profileImg;
	
}