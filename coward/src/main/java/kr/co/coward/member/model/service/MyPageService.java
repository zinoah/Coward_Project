package kr.co.coward.member.model.service;

import java.util.Map;

public interface MyPageService {


	/** 회원 정보 수정 서비스
	 * 
	 * @param paramMap
	 * @return result
	 */
	int updateInfo(Map<String, Object> paramMap);

}
