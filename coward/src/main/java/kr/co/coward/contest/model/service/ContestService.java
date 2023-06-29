package kr.co.coward.contest.model.service;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import kr.co.coward.contest.model.vo.Contest;

public interface ContestService {

	/**
	 * 공모전 10개 리스트 조회 서비스 default, new, popular
	 * 
	 * @param type
	 * @return contestList
	 */
	List<Contest> getContestList(String type);

	/**
	 * 콘테스트 개최 서비스
	 * 
	 * @param paramMap
	 * @return
	 * @throws IOException
	 */
	int contestCreate(Map<String, Object> paramMap) throws IOException;

}
