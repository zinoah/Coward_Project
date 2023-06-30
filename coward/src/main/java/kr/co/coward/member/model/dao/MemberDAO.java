package kr.co.coward.member.model.dao;

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
	
	/** 회원 가입 DAO
	 * @param member
	 * @return 
	 */
	public int insertMember(Member member) {
		return sqlSession.insert("memberMapper.insertMember", member);
	}

}
