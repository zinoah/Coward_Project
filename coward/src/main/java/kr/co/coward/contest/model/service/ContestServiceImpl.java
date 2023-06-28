package kr.co.coward.contest.model.service;

import java.io.File;
import java.io.IOException;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import kr.co.coward.common.Util;
import kr.co.coward.contest.model.dao.ContestDAO;

@Service
public class ContestServiceImpl implements ContestService {

	@Autowired
	private ContestDAO dao;

	// 공모전 개최
	@Override
	public int contestCreate(Map<String, Object> paramMap) throws IOException {

		// 자주쓰는 값 변수에 저장
		MultipartFile uploadImage = (MultipartFile) paramMap.get("thumbnail");

		String renameImage = null;

		if (uploadImage != null) {
			// 파일명 변경
			// uploadImage.getOriginalFilename() : 원본 파일명
			renameImage = Util.fileRename(uploadImage.getOriginalFilename());
			// 20230422858583.png

			paramMap.put("thumbnail", paramMap.get("webPath") + renameImage);
			// /resources/image/memberProfile/20230422858583.png
		} else {
			paramMap.put("thumbnail", null);
		}

		int result = dao.contestCreate(paramMap);

		// DB 수정 성공 시 메모리에 임시 저장되어있는 파일을 서버에 저장
		if (result > 0 && paramMap.get("thumbnail") != null) {
			uploadImage.transferTo(new File(paramMap.get("folderPath") + renameImage));
		}
		return result;
	}

}
