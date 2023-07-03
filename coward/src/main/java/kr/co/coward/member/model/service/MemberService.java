package kr.co.coward.member.model.service;

import kr.co.coward.member.model.vo.Member;

public interface MemberService {

	/**
	 * 테스트 로그인
	 * 
	 * @param id
	 * @param pw
	 * @return
	 */
	Member testLogin(Member testLoginMember);

	// 회원가입
	int insertMember(Member member);

	/**
	 * 로그인
	 * 
	 * @param inputMember
	 * @return loginMember
	 */
	public abstract Member login(Member inputMember);

}
