package kr.co.coward.contest.model.vo;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@ToString
public class Contest {
	private int contestNo;
	private int memberNo;
	private String contestTitle;
	private int typeNo;
	private String subject;
	private String qualification;
	private String addInfo;
	private String createDate;
	private String endDate;
	private String skill;
	private String thumbnail;
	private int price;
	private int adNo;
	private String winner;
}
