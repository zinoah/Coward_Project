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
	public Member testLogin(Member testLoginMember) {

		return sqlSession.selectOne("memberMapper.testLogin", testLoginMember);
	}

	/**
	 * 로그인
	 * 
	 * @param testLoginMember
	 * @return
	 */
	public Member login(Member loginMember) {

		return sqlSession.selectOne("memberMapper.login", loginMember);
	}

	/**
	 * 회원 가입 DAO
	 * 
	 * @param member
	 * @return
	 */
	public int insertMember(Member member) {
		return sqlSession.insert("memberMapper.insertMember", member);
	}


	
	
	/**
	 * 개발자 찾기 DAO 
	 * 
	 */
	public List<Member> getDevList(int pageSize) {
		Map<String, Object> params = new HashMap<>();
		
		params.put("pageSize", pageSize);
		return sqlSession.selectList("memberMapper.getDevList", params);
	}

}
