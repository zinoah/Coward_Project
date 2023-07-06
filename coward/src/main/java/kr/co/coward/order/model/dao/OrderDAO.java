package kr.co.coward.order.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.coward.order.model.vo.Order;

@Repository
public class OrderDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;

	/**
	 * 결제정보 저장 DAO
	 * 
	 * @param order
	 * @return
	 */
	public int insertOrder(Order order) {

		return sqlSession.insert("orderMapper.insertOrder", order);
	}

}
