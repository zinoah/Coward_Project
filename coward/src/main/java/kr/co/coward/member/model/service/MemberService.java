package kr.co.coward.member.model.service;

import java.util.List;

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
	public abstract int insertMember(Member inputMember);
	
	/**
	 * 로그인
	 * 
	 * @param inputMember
	 * @return loginMember
	 */

	public abstract Member login(Member inputMember);


	// 이메일 중복검사
	public abstract int emailDupCheck(String memberEmail);

	
	// 이메일로 인증번호 보내기
	public abstract int sendEmail(String memberEmail);


	// 발급된 인증번호, 입력한 인증번호 일치하는지 확인
	public int emailCertChk(String memberEmail, String randomNumFromUI);
	
	// 회원 탈퇴
	int secession(Member loginMember);


	

	
	/**
	 * 개발자 찾기
	 * @param pageSize
	 * @return
	 */
	List<Member> getFindDevPage(int pageSize);

  
	public abstract Member login(Member inputMember);

}
