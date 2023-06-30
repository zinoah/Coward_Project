/*****************************************************************************************/
/************************************** 전역변수 *****************************************/
/*****************************************************************************************/

const tooltipLink = document.querySelector(
  ".contest-create-form-title-tooltip-link"
); // 설명 툴팁 물음표 아이콘
const tooltipBoard = document.querySelector(
  ".contest-create-form-title-tooltip-board"
); // 설명 툴팁

const userNum = document.getElementById("user-num"); // 로그인 멤버 넘버
const userId = document.getElementById("user-id"); // 로그인 멤버 ID
const userName = document.getElementById("user-name"); // 로그인 멤버 이름
const userPhone = document.getElementById("user-phone"); // 로그인 멤버 핸드폰번호

const cpTitleInput = document.getElementById("cp-title-input"); // 기업명
const subjectTextarea = document.getElementById("subject-textarea"); // 공모 주제
const qualificationTextarea = document.getElementById("qualification-textarea"); // 응모 자격
const noteTextarea = document.getElementById("note-textarea"); // 참고 사항
const dateInput = document.getElementById("date-input"); // 종료 날짜
const skillList = document.getElementsByName("skill"); // 요구 기술
const thumbnailInput = document.getElementById("thumbnail-input"); // 인풋 이미지
const priceBar = document.getElementById("price-bar"); // 상금 range
const priceInput = document.getElementById("price"); // 상금
const resultPrice = document.getElementById("result-price"); // 인원수 + 공모전 상금

const general = document.querySelector("#general"); // 일반상품
const advanced = document.querySelector("#advanced"); // 고급형
const premium = document.querySelector("#premium"); // 프리미엄

const productList = document.getElementsByName("product"); // 상품종류 리스트

const productCardList = document.querySelectorAll(".promotion-product"); // 상품 카드 리스트

const upCountBtn = document.getElementById("up-count-btn"); // 카운트 +1
const downCountBtn = document.getElementById("down-count-btn"); // 카운트 -1

const startDate = document.getElementById("start-date"); // 오늘날짜 span
const endDate = document.getElementById("end-date"); // 공모 종료날짜 span
const stickyBoxPrice = document.getElementById("sticky-box-price"); // 공모요약 상금
const stickyBoxProduct = document.getElementById("sticky-box-product"); // 상품가격
const stickyBoxTotalPrice = document.getElementById("sticky-box-total-price"); // 상품 총 가격

const submitBtn = document.getElementById("submit-btn"); // submit버튼
const paymentBtn = document.getElementById("payment-btn"); // 결제버튼

/*****************************************************************************************/
/**************************************** 함수 *******************************************/
/*****************************************************************************************/

/** 가격 * 인원수 결과값 나타내는 함수  */
function result() {
  resultPrice.value = priceInput.value;
  stickyBoxPrice.innerText = priceInput.value;
}

function total() {
  let totalPrice =
    parseInt(stickyBoxProduct.innerText) + parseInt(stickyBoxPrice.innerText);
  stickyBoxTotalPrice.innerText = totalPrice;
}
/** rangeBar value 동기화 */
function ShowRangeValue(rVal) {
  priceInput.value = rVal;
}

/** 우승자 카운트 함수*/
function count(type) {
  // 현재 화면에 표시된 값
  let number = countInput.value;

  // 더하기/빼기
  if (type == "plus") {
    number = parseInt(number) + 1;
  } else if (type == "minus") {
    number = parseInt(number) - 1;
  }

  // 결과 출력
  countInput.value = number;

  result();
  total();
}

/*****************************************************************************************/
/*********************************** 이벤트 리스너 ***************************************/
/*****************************************************************************************/

/* tooltip 나타내기 */
tooltipLink.addEventListener("mouseover", function () {
  tooltipBoard.style.display = "block";
});

/* tooltip 감추기 */
tooltipLink.addEventListener("mouseleave", function () {
  tooltipBoard.style.display = "none";
});

/* skill list */

skillList.forEach((skill) =>
  skill.addEventListener("change", function () {
    console.log(skill.value);
    console.log(skill.checked);

    const label = skill.parentElement;
    if (skill.checked == true) {
      label.classList.add("checked");
    } else {
      label.classList.remove("checked");
    }
  })
);

/* input range로 가격올리기 */
function RangeSlider() {
  priceBar.addEventListener("input", function () {
    ShowRangeValue(this.value);
    result();
    total();
  });
}

RangeSlider();

/* 상품 선택시 border 활성화 이벤트 */

productCardList.forEach((card) => {
  card.addEventListener("click", function () {
    card.lastElementChild.checked = !card.lastElementChild.checked; // 버튼 토글

    console.log(card.lastElementChild.value);
    console.log(card.lastElementChild.checked);

    if (card.lastElementChild.checked == true) {
      productCardList.forEach((sibling) => {
        sibling.classList.remove("product-card-is-active");
      });
      card.classList.add("product-card-is-active");
    } else {
      card.classList.remove("product-card-is-active");
    }

    // 공모전 요약에 보여지기
    if (card.lastElementChild.value == 1) {
      stickyBoxProduct.innerText = 30;
    } else if (card.lastElementChild.value == 2) {
      stickyBoxProduct.innerText = 50;
    } else if (card.lastElementChild.value == 3) {
      stickyBoxProduct.innerText = 100;
    }

    total();
  });
});

/* 스티키 박스 */

// 썸네일 미리보기

if (thumbnailInput != null) {
  // inputImage 요소가 화면에 존재 할 때

  thumbnailInput.addEventListener("change", function () {
    if (this.files[0] != undefined) {
      // 파일이 선택되었을 때

      const reader = new FileReader();

      reader.readAsDataURL(this.files[0]);

      reader.onload = function (e) {
        // 프로필 이미지의 src 속성의 값을 FileReader가 읽어온 파일의 URL로 변경
        const thumbnail = document.getElementById("thumbnail-image");

        thumbnail.setAttribute("src", e.target.result);
        // -> setAttribute() 호출 시 중복되는 속성이 존재하면 덮어쓰기
      };
    }
  });
}
// 오늘 날짜 불러오기
let today = new Date();
let month = today.getMonth() + 1;
let day = today.getDate();
let year = today.getFullYear();
startDate.innerText = year + "-" + month + "-" + day;

// 종료날짜
dateInput.addEventListener("input", function () {
  let dateValue = dateInput.value;
  console.log(dateValue);

  endDate.innerText = dateValue;
});

// date input  오늘이전날짜 선택 불가
let formattedMonth = ("0" + month).slice(-2);
let formattedDay = ("0" + day).slice(-2);
let date = year + "-" + formattedMonth + "-" + formattedDay;
dateInput.value = date;
dateInput.setAttribute("min", date);

/*****************************************************************************************/
/*********************************** Port One 라이브러리 *********************************/
/*****************************************************************************************/

// 주문번호 만들기
function createOrderNum() {
  const date = new Date();
  const year = date.getFullYear();
  const month = String(date.getMonth() + 1).padStart(2, "0");
  const day = String(date.getDate()).padStart(2, "0");

  let orderNum = year + month + day;
  for (let i = 0; i < 10; i++) {
    orderNum += Math.floor(Math.random() * 8);
  }
  return orderNum;
}

function requestPay() {
  // IMP.request_pay(param, callback) 결제창 호출
  var uid = "";
  IMP.init("imp12530646");
  IMP.request_pay(
    {
      // param
      pg: "html5_inicis.INIpayTest",
      pay_method: "card",
      merchant_uid: createOrderNum(),
      name: "공모전 개최비용",
      amount: stickyBoxTotalPrice.textContent,
      buyer_email: userId.textContent,
      buyer_name: userName.textContent,
      num: userNum.textContent, // 회원번호
      buyer_tel: userPhone.textContent, //필수 파라미터 입니다.
    },
    function (rsp) {
      // callback
      console.log(rsp);
      if (rsp.success) {
        // 결제 성공시 결제버튼 비활성화 및 submit 버튼 활성화
        // submitBtn.style.display = "block";
        // paymentBtn.style.display = "none";

        // 결제 성공 시: 결제 승인 또는 가상계좌 발급에 성공한 경우
        uid = rsp.imp_uid;
        // 결제검증
        $.ajax({
          url: "/order/verify_iamport/" + rsp.imp_uid,
          type: "post",
        }).done(function (data) {
          // 결제를 요청했던 금액과 실제 결제된 금액이 같으면 해당 주문건의 결제가 정상적으로 완료된 것으로 간주한다.
          if (stickyBoxTotalPrice.textContent == data.response.amount) {
            // jQuery로 HTTP 요청
            // 주문정보 생성 및 테이블에 저장

            // 데이터를 json으로 보내기 위해 바꿔준다.
            data = JSON.stringify({
              orderNum: rsp.merchant_uid,
              num: userNum.value, // 회원번호
              productName: rsp.name,
              orderDate: new Date().getTime(),
              totalPrice: rsp.paid_amount,
              imp_uid: rsp.imp_uid,
            });

            jQuery
              .ajax({
                url: "/order/complete",
                type: "POST",
                dataType: "json",
                contentType: "application/json",
                data: data,
              })
              .done(function (res) {
                if (res > 0) {
                  swal("주문정보 저장 성공");
                  createPayInfo(uid);
                } else {
                  swal("주문정보 저장 실패");
                }
              });
          } else {
            alert("결제 실패");
          }
        });
      } else {
        swal("결제에 실패하였습니다.", "에러 내용: " + rsp.error_msg, "error");
      }
    }
  );
}
