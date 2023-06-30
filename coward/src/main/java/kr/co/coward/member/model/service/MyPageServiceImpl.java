package kr.co.coward.member.model.service;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import kr.co.coward.common.Util;
import kr.co.coward.contest.model.vo.Contest;
import kr.co.coward.member.model.dao.MyPageDAO;

@Service
public class MyPageServiceImpl implements MyPageService {

	@Autowired
	private MyPageDAO dao;

	// 일반 회원 정보 수정 서비스 구현
	@Override
	public int updateInfo(Map<String, Object> paramMap) {

		return dao.updateInfo(paramMap);
	}

	@Override
	public List<Contest> contestList() {

		return null;
	}

	/**********************************
	 * 기업 마이페이지 ServiceImpl
	 **********************************/

	// 기업 회원 정보 수정 서비스 구현
	@Override
	public int updateCompanyInfo(Map<String, Object> paramMap) throws IOException {

		// 자주쓰는 값 변수에 저장
		MultipartFile uploadImage = (MultipartFile) paramMap.get("uploadImage");
		String delete = (String) paramMap.get("delete");// "0" (변경) / "1" (삭제)

		// 프로필 삭제 여부 확인
		// 삭제가 아닌 경우는 새이미질 변경
		// 삭제된 경우 Null 값을 준비(DB에 Update)

		String renameImg = null; // 변경된 파일명 저장

		if (delete.equals("0")) { // 이미지가 변경된 경우
			// 파일명 변경
			renameImg = Util.fileRename(uploadImage.getOriginalFilename());
			paramMap.put("profileImg", paramMap.get("webPath") + renameImg);

		} else {
			paramMap.put("profileImg", null);
		}

		// DAO를 호출해서 프로필 이미지 수정
		int result = dao.updateCompanyInfo(paramMap);

		// DB 수정 성공 시 메모리에 임시 저장되어있는 파일을 서버에 저장
		if (result > 0 && paramMap.get("profileImg") != null) {
			uploadImage.transferTo(new File(paramMap.get("folderPath") + renameImg));
			// transferTo() : 해당 파일을 지정된 경로+이름으로 저장
		}

		return result;

	}

}
