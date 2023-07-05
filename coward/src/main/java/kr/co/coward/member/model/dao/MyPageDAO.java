package kr.co.coward.member.model.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.coward.member.model.vo.Member;

@Repository
public class MyPageDAO<Contest> {

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
	public List<Contest> getContestList(String type, int memberNo) {

		String mapperPath = null;

		switch (type) {
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
	 * @param memberNo
	 * @return
	 */
	public Member mypageInfo(int memberNo) {

		return sqlSession.selectOne("mypageMapper.mypageInfo", memberNo);
	}

	

}
