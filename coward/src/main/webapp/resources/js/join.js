const emailBtn = document.querySelector(".join-email");
const joinFirstBox = document.querySelector(".first-join-wrapper");

emailBtn.addEventListener("click", function () {
  joinFirstBox.style.display = "none";
  joinBox.style.display = "block";
});

// 회원가입 마지막단계 가는 버튼
const nextBtn = document.querySelector(".next-btn");
const joinBox = document.querySelector(".join-display");
const finalBox = document.querySelector(".join-final-display");

nextBtn.addEventListener("click", function () {
  finalBox.style.display = "block";
  joinBox.style.display = "none";
});

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

// 개인, 기업 타입 얻어오기
function onMemberTypeClick(type) {
  const memberType = document.getElementById("memberType");
  memberType.value = type;
}

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

// 이메일 인증하기 버튼 누르면 이메일 입력칸이랑 버튼 사라짐
const emailBox = document.querySelector(".email-box");
const emailDisplay = document.querySelector(".email-cert-display");
const certBtn = document.querySelector(".email-cert-btn");

certBtn.addEventListener("click", function () {
  emailBox.style.display = "none";
  emailDisplay.style.display = "block";
});

// 축하 모달
const joinModal = document.querySelector(".join-box");
const completeBtn = document.querySelector(".complete-btn");
const reject = document.querySelector(".pre-second");

// 완료 버튼 클릭
completeBtn.addEventListener("click", function () {
  //  overlay.classList.add("is-active");
  //  joinModal.style.display = "block";

  const signUpForm = document.getElementById("signUp-form");
  signUpForm.submit();
});

reject.addEventListener("click", function () {
  overlay.classList.remove("is-active");
  joinModal.style.display = "none";
});

overlay.addEventListener("click", () => {
  overlay.classList.remove("is-active");
  joinModal.style.display = "none";
});

// 비밀번호 같은지 확인작업
function checkPassword() {
  const password = document.getElementById("password").value;
  const passwordChk = document.getElementById("password-chk").value;
  const passDiscord = document.querySelector(".pw-explanation");
  //console.log(password, passwordchk);

  if (password !== passwordChk) {
    passDiscord.textContent = "비밀번호가 일치하지 않습니다!";
    passDiscord.style.color = "red";
    completeBtn.addEventListener("click", showWarning);
  } else {
    passDiscord.textContent = "";
    completeBtn.removeEventListener("click", showWarning);
  }
}

function onSubmit() {
  var password = document.getElementById("password").value;
  var passwordChk = document.getElementById("password-chk").value;

  if (password !== passwordChk) {
    window.alert("비밀번호가 일치하지 않습니다. 다시 확인해주세요.");
  } else {
    var form = document.createElement("form");
    form.method = "POST";
    form.action = "/signUp";

    var input = document.createElement("input");
    input.type = "hidden";
    input.name = "memberPw";
    input.value = password;
    form.appendChild(input);

    document.body.appendChild(form);
    form.submit();
  }
}

document.querySelector(".complete-btn").addEventListener("click", onSubmit);
