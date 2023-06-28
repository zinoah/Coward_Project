package kr.co.coward.contest.model.service;

import java.util.List;

import kr.co.coward.contest.model.vo.Contest;

public interface ContestService {

	/** 공모전 10개 리스트 조회 서비스
	 * default, new, popular
	 * @param type
	 * @return contestList
	 */
	List<Contest> getContestList(String type);
	
}
