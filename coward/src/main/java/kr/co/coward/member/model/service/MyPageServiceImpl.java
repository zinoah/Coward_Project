package kr.co.coward.member.model.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.coward.member.model.dao.MyPageDAO;

@Service
public class MyPageServiceImpl implements MyPageService {

	@Autowired
	private MyPageDAO dao;

	// ȸ�� ���� ���� ���� ����
	@Override
	public int updateInfo(Map<String, Object> paramMap) {

		return dao.updateInfo(paramMap);
	}

	// 기업 회원 정보 수정 서비스 구현
	@Override
	public int updateCompanyInfo(Map<String, Object> paramMap) {
		return dao.updateCompanyInfo(paramMap);
	}

}
