package kr.co.coward.member.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import kr.co.coward.member.model.dao.MemberDAO;
import kr.co.coward.member.model.vo.Member;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberDAO dao;
	
	@Autowired
	private BCryptPasswordEncoder bcrypt;

	private Logger logger = LoggerFactory.getLogger(MemberServiceImpl.class);
		

	// 테스트 로그인 
//	@Override
//	public Member login(Member testLoginMember) {
//
//		Member loginMember = dao.login(testLoginMember);
//
//		return loginMember;
//	}
	
	
	
	// 회원가입 
	@Override
	public int insertMember(Member member) {
		String memberPw = member.getMemberPw();
		
		int count = dao.insertMember(member);
		
		return count;
	}

	// 로그인
	@Override
	public Member login(Member inputMember) {
		return null;
	}

}
