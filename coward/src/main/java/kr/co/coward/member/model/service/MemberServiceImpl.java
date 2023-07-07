package kr.co.coward.member.model.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.Random;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import kr.co.coward.member.model.dao.MemberDAO;
import kr.co.coward.member.model.vo.Member;

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
	public int insertMember(Member inputMember) {

		String encPw = bcrypt.encode(inputMember.getMemberPw()); // 암호화
		inputMember.setMemberPw(encPw); // 비번 암호화된걸로 세팅

		int count = dao.insertMember(inputMember);

		return count;
	}

	// 로그인
	@Override
	public Member login(Member inputMember) {
		logger.info("로그인 서비스 기능 수행됨");
		System.out.println(inputMember.toString());

		logger.debug(inputMember.getMemberPw() + " / " + bcrypt.encode(inputMember.getMemberPw()));

		Member loginMember = dao.login(inputMember);
		System.out.println(inputMember.getMemberPw());

		if (loginMember != null) { // 아이디 일치
			if (bcrypt.matches(inputMember.getMemberPw(), loginMember.getMemberPw())) { // 비밀번호 일치
				loginMember.setMemberPw(null);
			} else {
				loginMember = null;
			}
		}

		return loginMember;
	}

	// 이메일 중복검사 서비스
	@Override
	public int emailDupCheck(String memberEmail) {
		return dao.emailDupCheck(memberEmail);
	}

	// 인증번호 메일로 보내기 서비스
	@Override
	public int sendEmail(String memberEmail) {

		String ranNum = numGen();

		HashMap<String, Object> map = new HashMap<String, Object>();

		map.put("randomNum", ranNum);

		map.put("email", memberEmail);

		System.out.println(memberEmail + ranNum); // 확인용도

		dao.insertRanNum(map);

		// 이메일 보내기
		sendSmtp(memberEmail, ranNum);

		return 1;
	}

	// 인증번호를 위한 6자리 랜덤숫자 발급 함수 선언
	public String numGen() {
		Random random = new Random();
		int createNum = 0;
		String ranNum = "";
		int letter = 6;
		String resultNum = "";

		for (int i = 0; i < letter; i++) {

			createNum = random.nextInt(9);
			ranNum = Integer.toString(createNum);
			resultNum += ranNum;
		}

		System.out.println(resultNum);
		return resultNum;

	}

	// 메일 보내기 위한 함수선언
	public String sendSmtp(String memberEmail, String ranNum) {

		// 구글 이메일
		String user_email = "rladmswls85@gmail.com";
		// 구글 비번
		String user_pw = "guaqtsfedkptlpdv";

		String smtp_host = "smtp.gmail.com";
		int smtp_port = 465; // TLS : 587, SSL : 465

		Properties props = System.getProperties();
		props.put("mail.smtp.host", smtp_host);
		props.put("mail.smtp.port", smtp_port);
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.ssl.enable", "true");
		props.put("mail.smtp.ssl.trust", smtp_host);

		Session session = Session.getInstance(props, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(user_email, user_pw);
			}
		});

		try {

			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress(user_email));

			// 받는 이메일
			message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(memberEmail));

			// 제목
			message.setSubject("coward에서 인증번호가 도착했습니다!");

			// 내용
			message.setText(ranNum);

			// 발송
			Transport.send(message);

		} catch (MessagingException e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
		return "sucessce";
	}

	// 인증번호 일치 여부 확인
	@Override
	public int emailCertChk(String memberEmail, String randomNumFromUI) {

		String randomNumFromDB = dao.emailCertChk(memberEmail);

		if (randomNumFromDB == null) {
			return 0;
		}

		if (randomNumFromUI.equals(randomNumFromDB)) {

			return 1;
		} else {

			return 0;
		}

	}

	// 회원 탈퇴
	@Override
	public int secession(Member loginMember) {

		System.out.println(loginMember.getMemberPw());


		String encPw = dao.selectEncPw(loginMember.getMemberNo());

		if (bcrypt.matches(loginMember.getMemberPw(), encPw)) {

			return dao.secession(loginMember.getMemberNo());
		}

		// 비밀번호 불일치
		return 0;
	}

	// 비밀번호 변경
	@Override
	public int changePw(Map<String, Object> paramMap) {

		String encPw = dao.selectEncPw((int) paramMap.get("memberNo"));

		if (bcrypt.matches((String) paramMap.get("currentPw"), encPw)) {

			paramMap.put("newPw", bcrypt.encode((String) paramMap.get("newPw")));

			return dao.changePw(paramMap);
		}

		// 비교결과가 불일치 할 때
		return 0;
	}


//	// 비밀번호 찾기
//		@Override
//		public int findPw() {
//			
//		}


	/**
	 * 개발자 목록 조회 ServiceImpl
	 */
	@Override
	public List<Member> getFindDevPage(int pageSize, int offset, String filter) {
		return dao.getDevList(pageSize, offset, filter);
	}

	// 개발자 찾기 좋아요 버튼 클릭 Service
	@Override
	public int likeDev(int cMemberNo, int pMemberNo, String flag) {
		return dao.likeDev(cMemberNo, pMemberNo, flag);
	}

	// 현재 회원이 좋아요 한 회원 목록
	@Override
	public List<Integer> getLikeList(int loginMemberNo) {

		return dao.getLikeList(loginMemberNo);
	}


}
