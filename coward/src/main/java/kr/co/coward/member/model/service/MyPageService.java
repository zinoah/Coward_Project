package kr.co.coward.member.model.service;

import java.io.IOException;
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
	 * 일반회원 공모전 관리 서비스
	 * 
	 * @return
	 */
	static List<Contest> contestList() {
		// TODO Auto-generated method stub
		return null;
	}

	/**********************************
	 * 기업 마이페이지 Service
	 **********************************/

	// 기업 회원정보 수정 서비스
	int updateCompanyInfo(Map<String, Object> paramMap);

	// 기업 프로필 사진 수정 서비스
	int updateCompanyProfile(Map<String, Object> map) throws IOException;

}
