// 인증했는지 안했는지 확인을위한 변수 선언
let isCertOK = false;

// 중복된 이메일일 경우 확인버튼 눌러도 메인으로 못넘어가도록
let duplicationEmail = false;

// 완료버튼 눌렀을때 조건 만족하지 않으면 못넘어가도록
let emailOK = false;
let pwOK = false;
let pwChkOK = false;

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
  // 개인/기업 선택 여부 확인
  // clicked는 join-second.scss에 정의되어있음
  const isPersonalSelected = singleBox.classList.contains("clicked");
  const isCompanySelected = companyBox.classList.contains("clicked");

  // 회원타입 선택하지 않은 경우 경고창 표시 + 페이지 이동 금지
  if (!isPersonalSelected && !isCompanySelected) {
    alert("회원 타입을 선택해주세요!");
    return;
  }

  // 필수항목 다 체크 안했을 경우 경고표시 + 페이지 이동 금지
  // 두개 묶지 말고 분리하기
  nextBtn.addEventListener("click", function () {
    if (!agree1.checked && !agree2.checked) {
      alert("약관 필수 항목에 동의해주세요!");
      return false;
    }

    finalBox.style.display = "block";
    joinBox.style.display = "none";
  });
});

// 개인 기업 박스 불들어오게하기
// clicked는 join-second.scss에 정의되어있음
var singleBox = document.querySelector(".single-box");
var companyBox = document.querySelector(".company-box");

singleBox.addEventListener("click", function () {
  singleBox.classList.toggle("clicked");
  companyBox.classList.remove("clicked");
  updateNextBtnColor();
});

companyBox.addEventListener("click", function () {
  companyBox.classList.toggle("clicked");
  singleBox.classList.remove("clicked");
  updateNextBtnColor();
});

// 개인, 기업 타입 얻어오기
function onMemberTypeClick(type) {
  const memberType = document.getElementById("memberType");
  memberType.value = type;
}

// 모달창 띄우기
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

// 축하 모달
const completeBtn = document.querySelector(".complete-btn");

// 완료 버튼 클릭
completeBtn.addEventListener("click", function () {
  // 이메일 인증을 안하고 완료버튼을 눌렀을경우
  if (isCertOK == false) {
    alert("이메일 인증 먼저 완료해주세요!");
    return;
  }

  // 유효성검사 안맞으면 못넘어감
  if (pwMessage1.innerText === "비밀번호 형식이 유효하지 않습니다.") {
    alert("비밀번호 형식이 유효하지 않습니다!");
    return;
  }

  if (pwMessage2.innerText === "비밀번호가 일치하지 않습니다.") {
    alert("비밀번호가 일치하지 않습니다!");
    return;
  }

  const signUpForm = document.getElementById("signUp-form");
  signUpForm.submit();
});

// 이메일 유효성 + 중복 검사
const memberEmail = document.getElementById("memberEmail");
const emailMessage = document.getElementById("emailMessage"); // 이메일 유효한지 텍스트 띄울공간

memberEmail.addEventListener("input", function () {
  // 입력이 안됐을때
  if (memberEmail.value.length == 0) {
    emailMessage.innerText = "메일을 받을 수 있는 이메일을 입력해주세요.";

    return;
  }

  // 입력된 경우
  const regExp = /^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$/;

  if (regExp.test(memberEmail.value)) {
    // 유효한 경우

    $.ajax({
      url: "emailDupCheck",

      data: { memberEmail: memberEmail.value },

      type: "GET",

      success: function (result) {
        // console.log(result);

        if (result == 1) {
          // 중복인 경우
          emailMessage.innerText = "이미 사용중인 이메일 입니다.";
          emailMessage.style.color = "red";

          duplicationEmail = false;
        } else {
          // 중복 아닌 경우
          emailMessage.innerText = "사용 가능한 이메일 입니다.";
          emailMessage.style.color = "green";

          duplicationEmail = true;
        }
      },

      error: function (req, status, error) {
        console.log(req.responseText);
      },
    });
  } else {
    emailMessage.innerText = "이메일 형식이 유효하지 않습니다.";
    emailMessage.style.color = "red";
  }
});

// 타이머에 사용될 변수
const cMessage = document.getElementById("cMessage");
let checkInterval;
let min = 4;
let sec = 59;

// 이메일 인증하기 버튼눌렀을때
function sendEmail() {
  const memberEmail = document.getElementById("memberEmail");

  const emailBox = document.querySelector(".email-box");
  const emailDisplay = document.querySelector(".email-cert-display");

  if (memberEmail.value.length == 0) {
    alert("인증번호를 받을 이메일을 입력해주세요!");
    return;
  }

  if (emailMessage.innerText == "이메일 형식이 유효하지 않습니다.") {
    alert("사용할 수 없는 이메일입니다. 이메일을 확인해주세요!");
    return;
  }

  if (duplicationEmail == false) {
    alert("중복된 이메일입니다. 다른 이메일을 입력해주세요!");
    return; // 함수실행중단
  } else {
    emailBox.style.display = "none";
    emailDisplay.style.display = "block";
  }

  $.ajax({
    url: "sendEmail",

    data: { memberEmail: memberEmail.value },

    type: "GET",

    success: function (result) {
      // console.log(result);
      console.log("이메일 발송 성공");
    },

    error: function (req, status, error) {
      console.log(req.responseText);
      console.log("이메일 발송 실패");
    },
  });

  cMessage.innerText = "5:00";
  min = 4;
  sec = 59;

  cMessage.classList.remove("confirm");
  cMessage.classList.remove("error");

  cMessage.style.color = "$red";

  // 변수에 저장해야지 멈출 수 있음
  checkInterval = setInterval(function () {
    if (sec < 10) sec = "0" + sec;
    cMessage.innerText = min + ":" + sec;

    if (Number(sec) === 0) {
      min--;
      sec = 59;
    } else {
      sec--;
    }

    if (min === -1) {
      // 만료
      cMessage.classList.add("error");
      cMessage.innerText = "인증번호가 만료되었습니다.";

      clearInterval(checkInterval); // checkInterval 반복을 지움
    }
  }, 1000); // 1초 지연 후 수행

  alert("인증번호가 발송되었습니다. 이메일을 확인해주세요.");
}

// 이메일로 인증번호 받고 입력 후 확인눌렀을 때
function emailCertChk() {
  const memberEmail = document.getElementById("memberEmail");
  const cNumber = document.getElementById("cNumber");

  $.ajax({
    url: "emailCertChk",

    data: { memberEmail: memberEmail.value, cNumber: cNumber.value },

    type: "GET",

    success: function (result) {
      console.log(result);

      if (result == 1) {
        clearInterval(checkInterval);
        alert("인증이 완료되었습니다.");
        isCertOK = true;
      } else if (result == 2) {
        alert("만료된 인증번호입니다.");
        isCertOK = false;
      } else {
        alert("인증에 실패하였습니다.");
        isCertOK = false;
      }
    },

    error: function (req, status, error) {
      console.log(req.responseText);
      console.log("이메일 인증 실패");
    },
  });
}

// 비밀번호 유효성 검사 + 일치하는지 확인
const memberPw = document.getElementById("memberPw");
const memberPwConfirm = document.getElementById("memberPwConfirm");
const pwMessage1 = document.querySelector(".pw-explanation1");
const pwMessage2 = document.querySelector(".pw-explanation2");

memberPw.addEventListener("input", function () {
  if (memberPw.value.length == 0) {
    pwMessage1 = "사용할 비밀번호를 입력해주세요.";
    pwMessage1.style.color = "gray";
    return;
  }

  const regExp = /^(?=.*[a-z])(?=.*[A-Z]).{8,16}$/;

  if (regExp.test(memberPw.value)) {
    if (memberPwConfirm.value.length == 0) {
      pwMessage1.innerText = "유효한 비밀번호 형식입니다.";
      pwMessage1.style.color = "green";
    } else {
      checkPw();
    }
  } else {
    pwMessage1.innerText = "비밀번호 형식이 유효하지 않습니다.";
    pwMessage1.style.color = "red";
  }
});

// 비밀번호 확인 유효성 검사
memberPwConfirm.addEventListener("input", checkPw);

function checkPw() {
  if (memberPw.value == memberPwConfirm.value) {
    pwMessage2.innerText = "비밀번호가 일치합니다.";
    pwMessage2.style.color = "green";
  } else {
    pwMessage2.innerText = "비밀번호가 일치하지 않습니다.";
    pwMessage2.style.color = "red";
    pwMessage2.classList.add("error");
    pwMessage2.classList.remove("confirm");
  }
}

// allAgree 체크박스 요소 가져오기
const allAgree = document.getElementById("allAgree");
const agree1 = document.getElementById("agree-1");
const agree2 = document.getElementById("agree-2");
const agree3 = document.getElementById("agree-3");
const checkboxes = document.querySelectorAll('[id^="agree-"]');
agree1.addEventListener("change", updateNextBtnColor);
agree2.addEventListener("change", updateNextBtnColor);
agree1.addEventListener("change", essentialAgree_updateNextBtnColor);
agree2.addEventListener("change", essentialAgree_updateNextBtnColor);
agree3.addEventListener("change", essentialAgree_updateNextBtnColor);

allAgree.addEventListener("click", function () {
  const checkboxes = document.querySelectorAll('[id^="agree-"]');
  checkboxes.forEach((checkbox) => {
    //agree-1, agree-2, agree-3의 체크 상태를 allAgree 체크 상태랑 맞춤
    checkbox.checked = allAgree.checked;
  });
  updateNextBtnColor();
});

// 모두 동의 해제 하면 나머지 항목도 체크 해제
allAgree.addEventListener("change", function () {
  if (!allAgree.checked) {
    checkboxes.forEach((checkbox) => {
      checkbox.checked = false;
    });
  }
});

// 회원 타입선택 + 모두동의하기 버튼눌렀거나 + 필수항목 눌렀으면 다음 버튼에 불들어오게 하기
// updateNextBtnColor(); 이 함수를 개인, 기업 불들어오게 하기, 모두동의버튼 클릭에 추가
function updateNextBtnColor() {
  if (
    ((singleBox.classList.contains("clicked") ||
      companyBox.classList.contains("clicked")) &&
      allAgree.checked) ||
    (agree1.checked &&
      agree2.checked &&
      (singleBox.classList.contains("clicked") ||
        companyBox.classList.contains("clicked")))
  ) {
    nextBtn.style.backgroundColor = "#3AACF8";
  } else {
    nextBtn.style.backgroundColor = ""; // 기본 버튼 색상으로 복원
  }
}

// 타입선택 + 필수 항목2개 누르면 다음에 불들어오기
function essentialAgree_updateNextBtnColor() {
  if (
    (singleBox.classList.contains("clicked") ||
      companyBox.classList.contains("clicked")) &&
    agree1.checked &&
    agree2.checked
  ) {
    nextBtn.style.backgroundColor = "#3AACF8";
  } else {
    nextBtn.style.backgroundColor = "";
  }

  // 항목중 하나라도 해제 하면 모두 동의하기 체크 해제
  var isAnyUnchecked = Array.from(checkboxes).some(
    (checkbox) => !checkbox.checked
  );
  if (isAnyUnchecked) {
    allAgree.checked = false;
  }
}

// 약관창 동의버튼 누르면 해당 약관에 불들어오게하기
const agreeBtn1 = document.querySelector(".agree-btn1");
const agreeBtn2 = document.querySelector(".agree-btn2");
const agreeBtn3 = document.querySelector(".agree-btn3");

agreeBtn1.addEventListener("click", function () {
  agree1.checked = true;
});

agreeBtn2.addEventListener("click", function () {
  agree2.checked = true;
});

agreeBtn3.addEventListener("click", function () {
  agree3.checked = true;
});

// 비밀번호 보기, 숨기기
$(document).ready(function () {
  $(".eye").on("click", function () {
    var inputPw = $(this).prev(".pw-input");
    inputPw.toggleClass("active");

    if (inputPw.hasClass("active")) {
      $(this)
        .attr("class", "ic-eye-open eye")
        .siblings(".pw-input")
        .attr("type", "text");
    } else {
      $(this)
        .attr("class", "ic-eye-close eye")
        .siblings(".pw-input")
        .attr("type", "password");
    }
  });
});

$(document).ready(function () {
  $(".eye").on("click", function () {
    var inputPw = $(this).prev(".pw-input-chk");
    inputPw.toggleClass("active");

    if (inputPw.hasClass("active")) {
      $(this)
        .attr("class", "ic-eye-open eye")
        .siblings(".pw-input-chk")
        .attr("type", "text");
    } else {
      $(this)
        .attr("class", "ic-eye-close eye")
        .siblings(".pw-input-chk")
        .attr("type", "password");
    }
  });
});
