package kr.co.coward.member.model.vo;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@ToString
public class Member {
	private int memberNo;
	private String memberType;
	private String memberId;
	private String memberPw;
	private String memberNick;
	private String profileImg;
	private String phone;
	private int regionNo;
	private String stack;
	private String skill;
	private String slogan;
	private String introduce;
	private String enrollDate;
	private String secessionFlag;
	private String termsFlag;
	private String snsFlag;

}
