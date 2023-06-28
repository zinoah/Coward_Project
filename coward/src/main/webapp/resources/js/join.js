// 개인 기업 박스 불들어오게하기
var singleBox = document.querySelector(".single-box");
var companyBox = document.querySelector(".company-box");

singleBox.addEventListener("click", function () {
  singleBox.classList.toggle("clicked");
  companyBox.classList.remove("clicked");
});

companyBox.addEventListener("click", function () {
  companyBox.classList.toggle("clicked");
  singleBox.classList.remove("clicked");
});

// 모달창 js
const overlay = document.getElementById("overlay");

const close1 = document.querySelector(".close1");
const close2 = document.querySelector(".close2");
const close3 = document.querySelector(".close3");

const term1 = document.querySelector(".terms1");
const term2 = document.querySelector(".terms2");
const term3 = document.querySelector(".terms3");
const agreeModal_1 = document.querySelector(".agree-box1");
const agreeModal_2 = document.querySelector(".agree-box2");
const agreeModal_3 = document.querySelector(".agree-box3");

term1.addEventListener("click", function () {
  overlay.classList.add("is-active");
  agreeModal_1.style.display = "block";
});

term2.addEventListener("click", function () {
  overlay.classList.add("is-active");
  agreeModal_2.style.display = "block";
});

term3.addEventListener("click", function () {
  overlay.classList.add("is-active");
  agreeModal_3.style.display = "block";
});

overlay.addEventListener("click", () => {
  overlay.classList.remove("is-active");
  agreeModal_1.style.display = "none";
  agreeModal_2.style.display = "none";
  agreeModal_3.style.display = "none";
});

close1.addEventListener("click", function () {
  overlay.classList.remove("is-active");
  agreeModal_1.style.display = "none";
  agreeModal_2.style.display = "none";
  agreeModal_3.style.display = "none";
});

close2.addEventListener("click", function () {
  overlay.classList.remove("is-active");
  agreeModal_1.style.display = "none";
  agreeModal_2.style.display = "none";
  agreeModal_3.style.display = "none";
});

close3.addEventListener("click", function () {
  overlay.classList.remove("is-active");
  agreeModal_1.style.display = "none";
  agreeModal_2.style.display = "none";
  agreeModal_3.style.display = "none";
});

// 회원가입 마지막단계 가는 버튼
const nextBtn = document.querySelector(".next-btn");

nextBtn.addEventListener("click", function () {
  const finalBox = document.querySelector(".join-final-display");
  const joinBox = document.querySelector(".join-display");

  finalBox.style.display = "block";
  joinBox.style.display = "none";
});

// 이메일 인증하기 버튼 누르면 이메일 입력칸이랑 버튼 사라짐
const emailBox = document.querySelector(".email-box");
const emailDisplay = document.querySelector(".email-cert-display");
const certBtn = document.querySelector(".email-cert-btn");

certBtn.addEventListener("click", function () {
  emailBox.style.display = "none";
  emailDisplay.style.display = "block";
});
