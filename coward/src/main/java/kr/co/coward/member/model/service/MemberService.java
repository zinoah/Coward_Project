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
	Member login(Member testLoginMember);

}
