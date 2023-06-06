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
	private String memberName;
	private String memberId;
	private String memberPw;
	private String memberPhone;
	private String enrollDate;
	private String secessionFlag;
	private String profileImg;
	private String slogan;
	private String introduce;
	private int reward;
	private String termsFlag;
	private String sns;
	private String subType;
	private int regionNo;
	private int skillNo;

}
