package kr.co.coward.contest.model.service;

import java.io.IOException;
import java.util.Map;

public interface ContestService {

	/**
	 * 콘테스트 개최 서비스
	 * 
	 * @param paramMap
	 * @return
	 * @throws IOException
	 */
	int contestCreate(Map<String, Object> paramMap) throws IOException;

}
