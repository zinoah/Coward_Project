package kr.co.coward.order.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.siot.IamportRestClient.IamportClient;
import com.siot.IamportRestClient.exception.IamportResponseException;
import com.siot.IamportRestClient.response.IamportResponse;
import com.siot.IamportRestClient.response.Payment;

import kr.co.coward.order.model.service.OrderService;
import kr.co.coward.order.model.vo.Order;

@Controller
@RequestMapping("/order")
public class OrderController {

	private IamportClient client = new IamportClient("8180716521067544",
			"JkSSZZEw1WPXupUxA6ct318UtjMSZDj5AGTIPTrojMmWMxvX8kXINmrM1fnFO9mHpzFxqm5bSoRP3YUf");

	@Autowired
	private OrderService service;

	@ResponseBody
	@PostMapping("/verify_iamport/{imp_uid}")
	public IamportResponse<Payment> verifyIamportPOST(@PathVariable("imp_uid") String imp_uid)
			throws IamportResponseException, IOException {

		return client.paymentByImpUid(imp_uid);
	}

	@PostMapping("/complete")
	@ResponseBody
	public int paymentComplete(@RequestBody Order order) throws Exception {

		// 토큰값 가져오기
		String token = service.getToken();
		// 가져온 토큰값으로 결제된 정보 조회
		String amount = service.paymentInfo(order.getImpUid(), token);

		int result = 0;

		System.out.println("서버로 저장 전 가격:" + order.getTotalPrice());
		System.out.println("REST API 통신 후 가져온 실제 결제 금액 :" + Long.parseLong(amount));
		// 결제금제금액 저장 전(서버로 저장 전 가격 != REST API 통신 후 가져온 실제 결제 금액)
		if (order.getTotalPrice() != Long.parseLong(amount)) {
			result = 0;

			// 결제 취소
			service.paymentCancle(token, order.getImpUid(), amount, "결제 금액 오류");
			return result;
		}

		// 결제정보 저장
		result = service.insertOrder(order);

		return result;

	}
}
