package kr.co.coward.member.model.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.coward.member.model.vo.Member;

@Repository
public class MemberDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;

	private Logger logger = LoggerFactory.getLogger(MemberDAO.class);

	// 테스트 로그인
//	public Member login(Member testLoginMember) {
//
//		return sqlSession.selectOne("memberMapper.login", testLoginMember);
//	}

	/**
	 * 회원 가입 DAO
	 * 
	 * @param member
	 * @return
	 */
	public int insertMember(Member inputMember) {
		return sqlSession.insert("memberMapper.insertMember", inputMember);

	}

	/**
	 * 로그인 DAO
	 * 
	 * @param
	 * @return
	 */
	public Member login(Member inputMember) {

		logger.info("로그인 dao 기능 수행됨");
		System.out.println(inputMember.toString());

		Member loginMember = sqlSession.selectOne("memberMapper.login", inputMember);

		return loginMember;

	}

	/**
	 * 이메일 중복검사 DAO
	 * 
	 * @param
	 * @return
	 */
	public int emailDupCheck(String memberEmail) {
		return sqlSession.selectOne("memberMapper.emailDupCheck", memberEmail);
	}

	/**
	 * 이메일 보내기 DAO
	 * 
	 * @param
	 * @return
	 */
	public int insertRanNum(HashMap<String, Object> map) {
		return sqlSession.insert("memberMapper.insertRanNum", map);
	}

	public String emailCertChk(String memberEmail) {
		return sqlSession.selectOne("memberMapper.emailCertChk", memberEmail);
	}

	/**
	 * 현재 로그인한 회원의 암호화된 비밀번호 조회 DAO
	 * 
	 * @param
	 * @return
	 */
	public String selectEncPw(int memberNo) {
		return sqlSession.selectOne("memberMapper.selectEncPw", memberNo);
	}

	/**
	 * 회원 탈퇴 DAO
	 * 
	 * @param
	 * @return
	 */
	public int secession(int memberNo) {

		return sqlSession.update("memberMapper.secession", memberNo);
	}

	/**
	 * 비밀번호 변경 DAO
	 * 
	 * @param
	 * @return
	 */
	public int changePw(Map<String, Object> paramMap) {
		return sqlSession.update("memberMapper.changePw", paramMap);
	}

	/**
	 * 개발자 찾기 DAO
	 * 
	 */
	public List<Member> getDevList(int pageSize, int offset) {
		Map<String, Object> params = new HashMap<>();
		params.put("offset", offset);
		params.put("pageSize", pageSize);

		return sqlSession.selectList("memberMapper.getDevList", params);
	}

}
