package kr.co.coward.member.model.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;



@Repository
public class MyPageDAO<Contest> {

	
	@Autowired
	private SqlSessionTemplate sqlSession;

	/**
	 * 일반 회원 정보 수정 DAO
	 * 
	 * @param paramMap
	 * @return result
	 */
	public int updateInfo(Map<String, Object> paramMap) {
		return sqlSession.update("myPageMapper.updateInfo", paramMap);
	}

	/**
	 * 기업 회원 정보 수정 DAO
	 * 
	 * @param paramMap
	 * @return result
	 */
	public int updateCompanyInfo(Map<String, Object> paramMap) {
		// TODO Auto-generated method stub
		return sqlSession.update("myPageMapper.updateCompanyInfo", paramMap);

	}




	

	


	
}
