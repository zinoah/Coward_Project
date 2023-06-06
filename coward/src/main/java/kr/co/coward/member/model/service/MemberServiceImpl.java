package kr.co.coward.member.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.coward.member.model.dao.MemberDAO;
import kr.co.coward.member.model.vo.Member;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberDAO dao;

	@Override
	public Member login(Member testLoginMember) {

		Member loginMember = dao.login(testLoginMember);

		return loginMember;
	}

}
