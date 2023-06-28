package kr.co.coward.order.controller;

import java.io.IOException;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.siot.IamportRestClient.IamportClient;
import com.siot.IamportRestClient.exception.IamportResponseException;
import com.siot.IamportRestClient.response.IamportResponse;
import com.siot.IamportRestClient.response.Payment;

@Controller
public class OrderController {

	private IamportClient client = new IamportClient("dd", "dd");

	@ResponseBody
	@PostMapping("/verify_iamport/{imp_uid}")
	public IamportResponse<Payment> verifyIamportPOST(@PathVariable("imp_uid") String imp_uid)
			throws IamportResponseException, IOException {

		return client.paymentByImpUid(imp_uid);
	}
}
