package kr.co.coward.contest.model.service;

import java.util.List;

import kr.co.coward.contest.model.vo.Contest;

public interface ContestService {

	/** 진행중인 공모전 10개 리스트 조회 서비스
	 * @return contestList
	 */
	List<Contest> getContestList();

	/** 최신 등록된 공모전 10개 리스트 조회 서비스
	 * @return newContestList
	 */
	List<Contest> getNewContestList();
	
}
