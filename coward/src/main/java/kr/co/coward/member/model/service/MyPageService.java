package kr.co.coward.member.model.service;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import kr.co.coward.contest.model.vo.Contest;

public interface MyPageService {

	/**
	 * 일반회원 정보 수정 서비스
	 * 
	 * @param paramMap
	 * @return result
	 */
	int updateInfo(Map<String, Object> paramMap);

	/**
	 * 마이페이지 - 공모전 목록 조회 서비스
	 * 
	 * @return
	 */
	List<Contest> contestList();

	/**********************************
	 * 기업 마이페이지 Service
	 **********************************/

	// 기업 회원정보 수정 서비스
	int updateCompanyInfo(Map<String, Object> paramMap) throws IOException;

	// 공모전 상태별 조회 서비스
	List<Contest> getContestList(String conStatus, int memberNo);

}
