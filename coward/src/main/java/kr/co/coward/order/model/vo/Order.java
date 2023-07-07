package kr.co.coward.order.model.vo;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@ToString
public class Order {
	private String orderNo; // 주문번호
	private int memberNo; // 회원번호
	private String memberNick;// 회원이름
	private String memberTel; // 회원 번호
	private String productName; // 상품이름
	private String orderDate; // 주문 날짜
	private int totalPrice; // 총금액
	private String impUid; // 거래 고유번호
}
