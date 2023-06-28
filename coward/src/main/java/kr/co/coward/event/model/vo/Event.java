package kr.co.coward.event.model.vo;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@ToString
public class Event {
	// EVENT_NO, EVENT_TITLE, EVENT_THUMBNAIL, EVENT_CONTENT, BANNER_IMG, AD_IMG, CREATE_DATE, END_DATE, STATUS
	private int eventNo; 			// 이벤트 PK
	private String eventTitle; 		// 이벤트 주제
	private String eventThunbnail;	// 이벤트 썸네일
	private String eventContent;	// 이벤트 본문
	private String bannerImg;		// 배너 이미지 (가로로 긴 형)
	private String adImg;			// 광고 모달 이미지
	private String createDate;		// 이벤트 시작일
	private String endDate;			// 이벤트 종료일
	private String statusFL;		// 이벤트 진행 상태
	
}
