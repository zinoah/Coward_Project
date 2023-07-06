const agreeBoxList = document.querySelectorAll(
  ".contest-attend-agree-check-box"
);

const policyAgree = document.getElementById("policy-agree"); // 코워드 정책 동의
const policyModalContainer = document.getElementById("policy-modal-container"); // 코워드 정책 모달
const policyModalCancleBtn = document.getElementById("policy-modal-cancle-btn"); // 코워드 정책 취소 버튼
const policyModalBackground = document.getElementById(
  "policy-modal-background"
); // 코워드 정책 모달 배경

// 코워드 정책 모달창 열기
policyAgree.addEventListener("click", function () {
  policyModalContainer.style.display = "block";
});

// 코워드 정책 모달창 닫기 (버튼)
policyModalCancleBtn.addEventListener("click", function () {
  policyModalContainer.style.display = "none";
});

// 코워드 정책 모달창 닫기 (배경)
policyModalBackground.addEventListener("click", function () {
  policyModalContainer.style.display = "none";
});

const termsAgree = document.getElementById("terms-agree"); // 공모전 이용약관 동의
const termsModalContainer = document.getElementById("terms-modal-container"); // 공모전 이용약관 모달
const termsModalCancleBtn = document.getElementById("terms-modal-cancle-btn"); // 공모전 이용약관 취소 버튼
const termsModalBackground = document.getElementById("terms-modal-background"); // 공모전 이용약관 모달 배경

// 공모전 이용약관 모달창 열기
termsAgree.addEventListener("click", function () {
  termsModalContainer.style.display = "block";
});

// 공모전 이용약관 모달창 닫기 (버튼)
termsModalCancleBtn.addEventListener("click", function () {
  termsModalContainer.style.display = "none";
});

// 공모전 이용약관 모달창 닫기 (배경)
termsModalBackground.addEventListener("click", function () {
  termsModalContainer.style.display = "none";
});

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

// 공모전 참여 주의사항 모달창 열기
cautionAgree.addEventListener("click", function () {
  cautionModalContainer.style.display = "block";
});

// 공모전 참여 주의사항 모달창 닫기 (버튼)
cautionModalCancleBtn.addEventListener("click", function () {
  cautionModalContainer.style.display = "none";
});

// 공모전 참여 주의사항 모달창 닫기 (배경)
cautionModalBackground.addEventListener("click", function () {
  cautionModalContainer.style.display = "none";
});
