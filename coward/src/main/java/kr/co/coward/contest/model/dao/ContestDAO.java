package kr.co.coward.contest.model.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.coward.contest.model.vo.Contest;
import kr.co.coward.contest.model.vo.ContestAttend;

@Repository
public class ContestDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;
	private Contest contest;

	private Logger logger = LoggerFactory.getLogger(ContestDAO.class);

	/**
	 * 진행중인 공모전 리스트 조회 DAO
	 */
	public List<Contest> getContestList(String type) {

		String mapperPath = null;

		switch (type) {
		case "all":
			mapperPath = "contestMapper.getAllContestList";
			break;
		case "default":
			mapperPath = "contestMapper.getDefaultContestList";
			break;
		case "new":
			mapperPath = "contestMapper.getNewContestList";
			break;
		case "popular":
			mapperPath = "contestMapper.getPopularContestList";
			break;
		}

		return sqlSession.selectList(mapperPath);

	}

	/**
	 * 필터 공모전 리스트 조회 DAO
	 * 
	 * @param type
	 * @return
	 */
	public List<Contest> filterContestList(String type) {

		String mapperPath = null;

		switch (type) {
		case "all":
			mapperPath = "contestMapper.getAllContestList";
			break;
		case "recruiting":
			mapperPath = "contestMapper.getRecruitingContestList";
			break;
		case "imminent":
			mapperPath = "contestMapper.getImminentContestList";
			break;
		case "end":
			mapperPath = "contestMapper.getEndContestList";
			break;
		}
		return sqlSession.selectList(mapperPath);

	}

	/**
	 * 공모전 개최 DAO
	 * 
	 * @param paramMap
	 * @return
	 */
	public int contestCreate(Map<String, Object> paramMap) {

		int result = sqlSession.insert("contestMapper.contestCreate", paramMap);

		if (result > 0)
			result = (int) paramMap.get("contestNo");

		System.out.println(result);

		return result;

	}

	/**
	 * 공모전 디테일 DAO
	 * 
	 * @param contestNo
	 * @return
	 */
	public Contest contestDetail(int contestNo) {

		return sqlSession.selectOne("contestMapper.contestDetail", contestNo);

	}

	/**
	 * 맞춤 공모전
	 * 
	 * @param contestNo
	 * @return
	 */

	public List<Contest> getRecommendList(Map<String, Object> paramMap) {

		logger.info("typeNo DAO 확인: " + paramMap);

		return sqlSession.selectList("contestMapper.getRecommendList", paramMap);
	}

	/**
	 * 북마크 카운트 UP DAO
	 * 
	 * @param contest
	 * @return
	 */
	public int bookmarkCountInsert(Contest contest) {

		int bookmark = 0;
		int result = sqlSession.insert("contestMapper.bookmarkCountInsert", contest);

		if (result > 0) {
			result = sqlSession.update("contestMapper.bookmarkCountUp", contest);
			if (result > 0) {
				bookmark = contest.getBookmarkCount();
			}
		}
		return bookmark;

	}

	/**
	 * 북마크 카운트 Down DAO
	 * 
	 * @param contest2
	 * @return
	 */
	public int bookmarkCountDelete(Contest contest) {
		int bookmark = 0;
		int result = sqlSession.delete("contestMapper.bookmarkCountDelete", contest);

		if (result > 0) {
			result = sqlSession.update("contestMapper.bookmarkCountDown", contest);
			if (result > 0) {
				bookmark = contest.getBookmarkCount();
			}
		}
		return bookmark;
	}

	/**
	 * 공모전 참가 DAO
	 * 
	 * @param paramMap
	 * @return
	 */
	public int contestAttendForm(Map<String, Object> paramMap) {

		int result = sqlSession.insert("contestAttendMapper.contestAttend", paramMap);

		if (result > 0) {
			sqlSession.update("memberMapper.attendCountUp", paramMap);
		}

		return result;

	}

	/**
	 * 참가여부 체크 DAO
	 * 
	 * @param attend
	 * @return
	 */
	public int contestAttendCheck(ContestAttend attend) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("contestAttendMapper.contestAttendCheck", attend);
	}

}
