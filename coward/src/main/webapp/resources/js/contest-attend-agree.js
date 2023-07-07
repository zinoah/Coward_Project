const agreeBoxList = document.querySelectorAll(
  ".contest-attend-agree-check-box"
);
const policyAgree = document.getElementById("policy-agree"); // 코워드 정책 동의
const policyModalContainer = document.getElementById("policy-modal-container"); // 코워드 정책 모달
const policyModalCancleBtn = document.getElementById("policy-modal-cancle-btn"); // 코워드 정책 취소 버튼
const policyModalBackground = document.getElementById(
  "policy-modal-background"
); // 코워드 정책 모달 배경
const policyAgreeCheck = document.getElementById("policy-agree-check"); // 색이 변할 label
const policyAgreeCheckbox = document.getElementById("policy-agree-checkbox"); // 인풋 체크박스
const policyAgreebtn = document.getElementById("policy-modal-agree-btn"); // 동의 버튼
const termsAgree = document.getElementById("terms-agree"); // 공모전 이용약관 동의
const termsModalContainer = document.getElementById("terms-modal-container"); // 공모전 이용약관 모달
const termsModalCancleBtn = document.getElementById("terms-modal-cancle-btn"); // 공모전 이용약관 취소 버튼
const termsModalBackground = document.getElementById("terms-modal-background"); // 공모전 이용약관 모달 배경
const termsAgreeCheck = document.getElementById("terms-agree-check"); // 색이 변할 label
const termsAgreeCheckbox = document.getElementById("terms-agree-checkbox"); // 인풋 체크박스
const termsAgreebtn = document.getElementById("terms-modal-agree-btn"); // 동의 버튼
const cautionAgree = document.getElementById("caution-agree"); // 공모전 참여 주의사항 동의
const cautionModalContainer = document.getElementById(
  "caution-modal-container"
); // 공모전 참여 주의사항 모달
const cautionModalCancleBtn = document.getElementById(
  "caution-modal-cancle-btn"
); // 공모전 참여 주의사항 취소 버튼
const cautionModalBackground = document.getElementById(
  "caution-modal-background"
); // 공모전 참여 주의사항 모달 배경
const cautionAgreeCheck = document.getElementById("caution-agree-check"); // 색이 변할 label
const cautionAgreeCheckbox = document.getElementById("caution-agree-checkbox"); // 인풋 체크박스
const cautionAgreebtn = document.getElementById("caution-modal-agree-btn"); // 동의 버튼
// 전체 동의 체크시키기
const allAgreeCheck = document.getElementById("all-agree-check");
const allAgreeCheckbox = document.getElementById("all-agree-checkbox");

const agreeBtn = document.getElementById("agree-btn"); // 참여하기 폼으로 이동하는 a태그

policyAgreeCheckbox.checked = false;
termsAgreeCheckbox.checked = false;
cautionAgreeCheckbox.checked = false;
allAgreeCheckbox.checked = false;

// 코워드 정책 모달창 열기
policyAgree.addEventListener("click", function () {
  policyModalContainer.style.display = "block";
});

// 코워드 정책 모달창 닫기 (버튼)
policyModalCancleBtn.addEventListener("click", function () {
  policyModalContainer.style.display = "none";
  policyAgreeCheckbox.checked = false;
  policyAgreeCheck.style.backgroundColor = "#B2B3B9";
  allAgreeCheckbox.checked = false;
  allAgreeCheck.style.backgroundColor = "#B2B3B9";
});

// 코워드 정책 모달창 닫기 (배경)
policyModalBackground.addEventListener("click", function () {
  policyModalContainer.style.display = "none";
});

// 동의버튼 클릭시 모달창 닫기 / 동의 체크
policyAgreebtn.addEventListener("click", function () {
  policyModalContainer.style.display = "none";
  policyAgreeCheckbox.checked = true;
  policyAgreeCheck.style.backgroundColor = "#3AACF8";
  allAgree();
});

// 공모전 이용약관 모달창 열기
termsAgree.addEventListener("click", function () {
  termsModalContainer.style.display = "block";
});

// 공모전 이용약관 모달창 닫기 (버튼)
termsModalCancleBtn.addEventListener("click", function () {
  termsModalContainer.style.display = "none";
  termsAgreeCheckbox.checked = false;
  termsAgreeCheck.style.backgroundColor = "#B2B3B9";
  allAgreeCheckbox.checked = false;
  allAgreeCheck.style.backgroundColor = "#B2B3B9";
});

// 공모전 이용약관 모달창 닫기 (배경)
termsModalBackground.addEventListener("click", function () {
  termsModalContainer.style.display = "none";
});

// 동의버튼 클릭시 모달창 닫기 / 동의 체크
termsAgreebtn.addEventListener("click", function () {
  termsModalContainer.style.display = "none";
  termsAgreeCheckbox.checked = true;
  termsAgreeCheck.style.backgroundColor = "#3AACF8";

  allAgree();
});

// 공모전 참여 주의사항 모달창 열기
cautionAgree.addEventListener("click", function () {
  cautionModalContainer.style.display = "block";
});

// 공모전 참여 주의사항 모달창 닫기 (버튼)
cautionModalCancleBtn.addEventListener("click", function () {
  cautionModalContainer.style.display = "none";
  cautionAgreeCheckbox.checked = false;
  cautionAgreeCheck.style.backgroundColor = "#B2B3B9";
  allAgreeCheckbox.checked = false;
  allAgreeCheck.style.backgroundColor = "#B2B3B9";
});

// 공모전 참여 주의사항 모달창 닫기 (배경)
cautionModalBackground.addEventListener("click", function () {
  cautionModalContainer.style.display = "none";
});

// 동의버튼 클릭시 모달창 닫기 / 동의 체크
cautionAgreebtn.addEventListener("click", function () {
  cautionModalContainer.style.display = "none";
  cautionAgreeCheckbox.checked = true;
  cautionAgreeCheck.style.backgroundColor = "#3AACF8";
  allAgree();
});

// 전체동의 클릭 시 모든약관 색/ 상태 변화
allAgreeCheck.addEventListener("click", function () {
  if (allAgreeCheckbox.checked == false) {
    allAgreeCheckbox.checked = true;
    cautionAgreeCheckbox.checked = true;
    termsAgreeCheckbox.checked = true;
    policyAgreeCheckbox.checked = true;

    policyAgreeCheck.style.backgroundColor = "#3AACF8";
    termsAgreeCheck.style.backgroundColor = "#3AACF8";
    cautionAgreeCheck.style.backgroundColor = "#3AACF8";
    allAgreeCheck.style.backgroundColor = "#3AACF8";
  } else {
    allAgreeCheckbox.checked = false;
    cautionAgreeCheckbox.checked = false;
    termsAgreeCheckbox.checked = false;
    policyAgreeCheckbox.checked = false;

    policyAgreeCheck.style.backgroundColor = "#B2B3B9";
    termsAgreeCheck.style.backgroundColor = "#B2B3B9";
    cautionAgreeCheck.style.backgroundColor = "#B2B3B9";
  }

  console.log(allAgreeCheckbox.checked);
});

function allAgree() {
  if (
    cautionAgreeCheckbox.checked == true &&
    termsAgreeCheckbox.checked == true &&
    policyAgreeCheckbox.checked == true
  ) {
    allAgreeCheckbox.checked = true;
    allAgreeCheck.style.backgroundColor = "#3AACF8";
  }

  console.log(policyAgreeCheckbox.checked);
  console.log(cautionAgreeCheckbox.checked);
  console.log(termsAgreeCheckbox.checked);
}

agreeBtn.addEventListener("click", function () {
  if (allAgreeCheckbox.checked == true) {
    location.href = "../attendForm/" + contestNo;
  } else {
    alert("모두 동의해주세요!");
  }
});
