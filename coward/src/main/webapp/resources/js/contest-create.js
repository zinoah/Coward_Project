/* 전역변수 */

const tooltipLink = document.querySelector(
  ".contest-create-form-title-tooltip-link"
);
const tooltipBoard = document.querySelector(
  ".contest-create-form-title-tooltip-board"
);
const cpNameInput = document.getElementById("cp-name-input"); // 기업명
const subjectTextarea = document.getElementById("subject-textarea"); // 공모 주제
const qualificationTextarea = document.getElementById("qualification-textarea"); // 응모 자격
const noteTextarea = document.getElementById("note-textarea"); // 참고 사항
const dateInput = document.getElementById("date-input"); // 종료 날짜
const skillList = document.getElementsByName("skill"); // 요구 기술
const thumbnailInput = document.getElementById("thumbnail-input"); // 썸네일
const priceBar = document.getElementById("price-bar"); // 상금 range
const countInput = document.getElementById("count"); // 상금받는 인원
const priceInput = document.getElementById("price"); // 상금
const resultPrice = document.getElementById("result-price"); // 총 상금
const stickyBoxPrice = document.getElementById("sticky-box-price"); // 공모요약 상금
const general = document.querySelector("#general"); // 일반상품
const advanced = document.querySelector("#advanced"); // 고급형
const premium = document.querySelector("#premium"); // 프리미엄
const productList = document.getElementsByName("product"); // 상품종류 리스트
const productCardList = document.querySelectorAll(".promotion-product"); // 상품 카드 리스트

const upCountBtn = document.getElementById("up-count-btn"); // 카운트 +1
const downCountBtn = document.getElementById("down-count-btn"); // 카운트 -1

const startDate = document.getElementById("start-date"); // 오늘날짜 span
const endDate = document.getElementById("end-date"); // 공모 종료날짜 span
const stickyBoxProduct = document.getElementById("sticky-box-product"); // 상품가격
const stickyBoxTotalPrice = document.getElementById("sticky-box-total-price"); // 상품 총 가격
/****************************************************************************************/
/* 함수 */

/** 가격 * 인원수 결과값 나타내는 함수  */
function result() {
  let totalPrice = parseInt(priceInput.value) * parseInt(countInput.value);

  resultPrice.innerText = totalPrice;
  stickyBoxPrice.innerText = totalPrice;
}

/** rangeBar value 동기화 */
function ShowRangeValue(rVal) {
  priceInput.value = rVal;
}

/*****************************************************************************************/
/* 이벤트 리스너 */

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

/* 우승자 카운트 */
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
}

/* input range로 가격올리기 */
function RangeSlider() {
  priceBar.addEventListener("input", function () {
    ShowRangeValue(this.value);
    result();
  });
}

RangeSlider();

/* 총상금 */

countInput.addEventListener("input", function () {
  result();
});
priceInput.addEventListener("input", function () {
  result();
});

/* 상품 선택시 border 활성화 이벤트 */

productCardList.forEach((card) => {
  card.addEventListener("click", function () {
    card.lastElementChild.checked = !card.lastElementChild.checked;

    console.log(card.lastElementChild.value);
    console.log(card.lastElementChild.checked);
    // 공모요약에 출력하기
    stickyBoxProduct.innerText = card.lastElementChild.value;

    if (card.lastElementChild.checked == true) {
      productCardList.forEach((sibling) => {
        sibling.classList.remove("product-card-is-active");
        console.log(sibling);
      });
      card.classList.add("product-card-is-active");
    } else {
      card.classList.remove("product-card-is-active");
    }
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
//시작 날짜
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

// 총 금액
