package kr.co.coward.member.model.service;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import kr.co.coward.contest.model.vo.Contest;
import kr.co.coward.contest.model.vo.ContestAttend;
import kr.co.coward.member.model.vo.Member;

public interface MyPageService {

	/**
	 * 일반회원 정보 수정 서비스
	 * 
	 * @param paramMap
	 * @return result
	 */
	int updateInfo(Map<String, Object> paramMap) throws IOException;

//	/**
//	 * 마이페이지 - 공모전 목록 조회 서비스
//	 * 
//	 * @return
//	 */
//
//	List<ContestAttend> getConProgress(String attendStatus, int memberNo);

//	List<Contest> contestList();

	/**
	 * 마이페이지 메인 - 정보 조회 서비스
	 * 
	 * @param memberNo
	 * @return
	 */
	Member mypageInfo(int memberNo);

	/**
	 * 마이페이지 메인 - 관심 공모전
	 * @return
	 */
	List<Contest> getLikeCon(int memberNo);


	
	/**********************************
	 * 기업 마이페이지 Service
	 **********************************/

	// 기업 회원정보 수정 서비스
	int updateCompanyInfo(Map<String, Object> paramMap) throws IOException;

	// 공모전 상태별 조회 서비스
	List<Contest> getContestList(String conStatus, int memberNo);

	// 관심있는 개발자 목록 조회 서비스
	List<Member> developerLikeList(int memberNo);

	// 우승자 선정 페이지
	List<Member> winnerSelect(int contestNo, String stack);

	// 우승자 선정 페이지 - 콘테스트 정보 조회
	List<Contest> winnerSelectContest(int contestNo);

	// 우승자 선정 페이지 - 모달창 참여자 정보 조회
	List<ContestAttend> contestAttendInfo(Map<String, Object> paramMap);

	

	

}
