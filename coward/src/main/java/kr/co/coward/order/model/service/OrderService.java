package kr.co.coward.order.model.service;

import java.io.IOException;

import org.json.simple.parser.ParseException;

import kr.co.coward.order.model.vo.Order;

public interface OrderService {

	/**
	 * 결제정보 저장
	 * 
	 * @param order
	 * @return
	 */
	int insertOrder(Order order);

	/**
	 * iamport 토큰값 가져오기
	 * 
	 * @return
	 * @throws Exception
	 */
	String getToken() throws Exception;

	/**
	 * 결제 취소
	 * 
	 * @param token
	 * @param impUid
	 * @param amount
	 * @param string
	 * @throws IOException
	 * @throws ParseException
	 */
	void paymentCancle(String token, String impUid, String amount, String string) throws IOException, ParseException;

	/**
	 * 결제정보 불러오기
	 * 
	 * @param impUid
	 * @param token
	 * @return
	 * @throws IOException
	 * @throws ParseException
	 */
	String paymentInfo(String impUid, String token) throws IOException, ParseException;

}
