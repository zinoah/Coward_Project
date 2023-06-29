package kr.co.coward.member.model.service;

import java.io.IOException;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import kr.co.coward.member.model.dao.MyPageDAO;

@Service
public class MyPageServiceImpl implements MyPageService {

	@Autowired
	private MyPageDAO dao;

	// 마이페이지 메인 (일반 회원)
	@Override
	public int updateInfo(Map<String, Object> paramMap) {

		return dao.updateInfo(paramMap);
	}

	/**********************************
	 * 기업 마이페이지 ServiceImpl
	 **********************************/

	// 기업 회원 정보 수정 서비스 구현
	@Override
	public int updateCompanyInfo(Map<String, Object> paramMap) {
		return dao.updateCompanyInfo(paramMap);
	}

	// 기업 프로필 수정 서비스 구현
	@Override
	public int updateCompanyProfile(Map<String, Object> map) throws IOException {

		// 자주쓰는 값 변수에 저장
		MultipartFile uploadImage = (MultipartFile) map.get("uploadImage");

		// String delete = (String) map.get("delete"); // "0" (변경) / "1" (삭제)

		return 0;
	}

}
