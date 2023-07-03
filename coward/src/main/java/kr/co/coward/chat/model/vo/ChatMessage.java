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
public class ChatMessage {
	private int cmNo;
	private int memberNo;
	private int chatRoomNo;
	private String message;
	private Date createDate;
	private String memberId;
	private String memberNick;
	private String readOrNot;
}
