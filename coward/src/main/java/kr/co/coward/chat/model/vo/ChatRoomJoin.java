package kr.co.coward.chat.model.vo;


import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@ToString
public class ChatRoomJoin {
	private int memberNo;
	private int chatRoomNo;
}
