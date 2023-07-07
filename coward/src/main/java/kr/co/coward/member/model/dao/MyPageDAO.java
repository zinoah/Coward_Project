package kr.co.coward.member.model.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.coward.contest.model.vo.Contest;
import kr.co.coward.contest.model.vo.ContestAttend;
import kr.co.coward.member.model.vo.Member;

@Repository
public class MyPageDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;

	/**
	 * 일반 회원 정보 수정 DAO
	 * 
	 * @param paramMap
	 * @return result
	 */
	public int updateInfo(Map<String, Object> paramMap) {
		return sqlSession.update("myPageMapper.updateInfo", paramMap);
	}

	/**
	 * 기업 회원정보 수정 DAO
	 * 
	 * @param paramMap
	 * @return result
	 */
	public int updateCompanyInfo(Map<String, Object> paramMap) {
		// TODO Auto-generated method stub
		return sqlSession.update("myPageMapper.updateCompanyInfo", paramMap);

	}

	// 공모전 상태별 조회 DAO
	public List<Contest> getContestList(String conStatus, int memberNo) {

		String mapperPath = null;

		switch (conStatus) {
		case "전체":
			mapperPath = "myPageMapper.getAllContestList";
			break;
		case "모집중":
			mapperPath = "myPageMapper.getRecruitingContestList";
			break;
		case "심사중":
			mapperPath = "myPageMapper.getCastingContestList";
			break;
		case "완료":
			mapperPath = "myPageMapper.getEndContestList";
			break;
		}

		return sqlSession.selectList(mapperPath, memberNo);
	}

	// 관심있는 개발자 목록 조회 DAO
	public List<Member> developerLikeList(int memberNo) {

		return sqlSession.selectList("myPageMapper.developerLikeList", memberNo);

	}

	/**
	 * 마이페이지 - 정보조회 DAO
	 * 
	 * @param memberNo
	 * @return
	 */
	public Member mypageInfo(int memberNo) {

		return sqlSession.selectOne("myPageMapper.mypageInfo", memberNo);
	}

	/**
	 * 마이페이지 - 공모전 관리 DAO
	 * 
	 * @param memberNo
	 * @return
	 */
//	public List<ContestAttend> conProgress(String attendStatus, int memberNo) {
//
//		return sqlSession.conProgress("myPageMapper.conProgress", memberNo);
//	}

	// 우승자 선정 페이지
	public List<Member> winnerSelect(int contestNo, String stack) {

		return sqlSession.selectList("myPageMapper.winnerSelect", contestNo);
	}

	// 우승자 선정페이지 - 콘테스트 조회
	public List<Contest> winnerSelectContest(int contestNo) {

		return sqlSession.selectList("myPageMapper.winnerSelectContest", contestNo);
	}

	// 우승자 선정페이지 - 모달창 참가자 정보 조회
	public List<ContestAttend> contestAttendInfo(Map<String, Object> paramMap) {

		return sqlSession.selectList("myPageMapper.contestAttendInfo", paramMap);
	}

}
