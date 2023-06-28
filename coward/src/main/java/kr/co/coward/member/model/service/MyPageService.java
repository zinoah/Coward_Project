package kr.co.coward.member.model.service;

import java.util.List;
import java.util.Map;

import kr.co.coward.contest.model.vo.Contest;

public interface MyPageService {

	/**
	 * 마이페이지 메인 (일반회원)
	 * 
	 * @param paramMap
	 * @return result
	 */
	int updateInfo(Map<String, Object> paramMap);

	/**
	 * 기업 회원 프로필 수정 서비스
	 * 
	 * @param paramMap
	 * @return result
	 */
	int updateCompanyInfo(Map<String, Object> paramMap);

	
	/**
	 * 일반회원 공모전 관리 서비스
	 * @return
	 */
	static List<Contest> contestList() {
		// TODO Auto-generated method stub
		return null;
	}


	


}
