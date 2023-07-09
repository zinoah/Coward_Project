package kr.co.coward.contest.model.service;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import kr.co.coward.common.Util;
import kr.co.coward.contest.model.dao.ContestDAO;
import kr.co.coward.contest.model.vo.Contest;
import kr.co.coward.contest.model.vo.ContestAttend;

@Service
public class ContestServiceImpl implements ContestService {

	@Autowired
	private ContestDAO dao;
	private Logger logger = LoggerFactory.getLogger(ContestDAO.class);

	// 공모전 10개 리스트 조회 서비스
	// default, new, popular
	@Override
	public List<Contest> getContestList(String type) {
		return dao.getContestList(type);
	}

	// 필터 공모전 리스트 조회 서비스
	@Override
	public List<Contest> filterContestList(String parameter) {

		return dao.filterContestList(parameter);
	}

	// 공모전 개최
	@Override
	public int contestCreate(Map<String, Object> paramMap) throws IOException {

		// XSS 방지 처리 + 개행문자 처리

		String subject = (String) paramMap.get("subject");
		String qualification = (String) paramMap.get("qualification");
		String addInfo = (String) paramMap.get("addInfo");

		Contest contest = new Contest();

		contest.setSubject(subject);
		contest.setQualification(qualification);
		contest.setAddInfo(addInfo);

		paramMap.put("addInfo", Util.XSSHandling(contest.getAddInfo()));
		paramMap.put("addInfo", Util.newLineHandling(contest.getAddInfo()));
		paramMap.put("subject", Util.XSSHandling(contest.getSubject()));
		paramMap.put("subject", Util.newLineHandling(contest.getSubject()));
		paramMap.put("qualification", Util.XSSHandling(contest.getQualification()));
		paramMap.put("qualification", Util.newLineHandling(contest.getQualification()));

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

		int contestNo = dao.contestCreate(paramMap);

		// DB 수정 성공 시 메모리에 임시 저장되어있는 파일을 서버에 저장
		if (contestNo > 0 && paramMap.get("thumbnail") != null) {
			uploadImage.transferTo(new File(paramMap.get("folderPath") + renameImage));
		}
		return contestNo;
	}

	// 공모전 상세조회 서비스
	@Override
	public Contest contestDetail(int contestNo) {

		return dao.contestDetail(contestNo);
	}

	/**
	 * 맞춤공모전
	 * 
	 * @param typeNo
	 * @return
	 */
	@Override
	public List<Contest> getRecommendList(Map<String, Object> paramMap) {

		return dao.getRecommendList(paramMap);
	}

	// 북마크 UP 카운트 서비스
	@Override
	public int bookmarkCountInsert(Contest contest) {

		return dao.bookmarkCountInsert(contest);
	}

	// 북마크 DOWN 카운트 서비스
	@Override
	public int bookmarkCountDelete(Contest contest) {
		// TODO Auto-generated method stub
		return dao.bookmarkCountDelete(contest);
	}

	// 공모전 참가 서비스
	@Override
	public int contestAttendForm(Map<String, Object> paramMap) throws IOException {

		// XSS 방지 처리 + 개행문자 처리

		String description = (String) paramMap.get("description");

		ContestAttend attend = new ContestAttend();

		attend.setDescription(description);

		System.out.println("간단설명 : " + description);

		paramMap.put("description", Util.XSSHandling(attend.getDescription()));
		paramMap.put("description", Util.newLineHandling(attend.getDescription()));

		// 자주쓰는 값 변수에 저장
		MultipartFile uploadFile = (MultipartFile) paramMap.get("pptFile");

		String renameFile = null;

		if (uploadFile != null) {
			// 파일명 변경
			// uploadImage.getOriginalFilename() : 원본 파일명
			renameFile = Util.fileRename(uploadFile.getOriginalFilename());
			// 20230422858583.png

			paramMap.put("pptFile", paramMap.get("webPath") + renameFile);
			// /resources/image/memberProfile/20230422858583.png
		} else {
			paramMap.put("pptFile", null);
		}

		int result = dao.contestAttendForm(paramMap);

		// DB 수정 성공 시 메모리에 임시 저장되어있는 파일을 서버에 저장
		if (result > 0 && paramMap.get("pptFile") != null) {
			uploadFile.transferTo(new File(paramMap.get("folderPath") + renameFile));
		}
		return result;
	}

	// 참가여부 체크 서비스
	@Override
	public int contestAttendCheck(ContestAttend attend) {
		// TODO Auto-generated method stub
		return dao.contestAttendCheck(attend);
	}

}
