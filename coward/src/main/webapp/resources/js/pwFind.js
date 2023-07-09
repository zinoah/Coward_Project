let isCertOK = false;
const memberEmail = document.getElementById("memberEmail"); // 이메일 인풋창
const emailBox = document.querySelector(".email-box");
const emailDisplay = document.querySelector(".email-cert-display");
const emailMessage = document.getElementById("emailMessage"); // 유효성검사 자리
const completeBtn = document.querySelector(".complete-btn");

// 이메일 유효성검사

memberEmail.addEventListener("input", function () {
  // 입력이 안됐을때
  if (memberEmail.value.length == 0) {
    emailMessage.innerText = "메일을 받을 수 있는 이메일을 입력해주세요.";

    return;
  }

  // 입력된 경우
  const regExp = /^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$/;

  if (regExp.test(memberEmail.value)) {
    $.ajax({
      url: "emailDupCheck",

      data: { memberEmail: memberEmail.value },

      type: "GET",

      success: function (result) {
        // console.log(result);

        if (result == 1) {
          // 중복인 경우
        } else {
          // 중복 아닌 경우
          emailMessage.innerText = "가입되어 있지 않은 이메일입니다.";
          emailMessage.style.color = "red";
        }
      },

      error: function (req, status, error) {
        console.log(req.responseText);
      },
    });

    // 유효한 경우
    emailMessage.innerText = "";
  } else {
    emailMessage.innerText = "이메일 형식이 유효하지 않습니다.";
    emailMessage.style.color = "red";
  }
});

// 이메일 인증하기 버튼눌렀을때
function sendEmail() {
  if (memberEmail.value.length == 0) {
    alert("인증번호를 받을 이메일을 입력해주세요!");
    return;
  }

  if (emailMessage.innerText == "이메일 형식이 유효하지 않습니다.") {
    alert("사용할 수 없는 이메일입니다. 이메일을 확인해주세요!");
    return;
  }

  if (emailMessage.innerText == "메일을 받을 수 있는 이메일을 입력해주세요.") {
    alert("사용할 수 없는 이메일입니다. 이메일을 확인해주세요!");
    return;
  }
  emailBox.style.display = "none";
  emailDisplay.style.display = "block";

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

const regExp = /^(?=.*[a-z])(?=.*[A-Z]).{8,16}$/;

// 비밀번호 유효성 검사 + 일치하는지 확인
const memberPw = document.getElementById("memberPw");
const memberPwConfirm = document.getElementById("memberPwConfirm");
const pwMessage1 = document.querySelector(".pw-explanation1");
const pwMessage2 = document.querySelector(".pw-explanation2");

memberPw.addEventListener("input", function () {
  if (memberPw.value.length == 0) {
    pwMessage1.innerText = "사용할 비밀번호를 입력해주세요.";
    pwMessage1.style.color = "gray";
    return;
  } else {
    if (regExp.test(memberPw.value)) {
      if (memberPwConfirm.value.length == 0) {
        pwMessage1.innerText = "유효한 비밀번호 형식입니다.";
        pwMessage1.style.color = "green";
        pwMessage1.classList.add("confirm");
        pwMessage1.classList.remove("error");
      } else {
        checkPw();
      }
    } else {
      pwMessage1.innerText = "비밀번호 형식이 유효하지 않습니다.";
      pwMessage1.style.color = "red";
      pwMessage1.classList.add("error");
      pwMessage1.classList.remove("confirm");
    }
  }
});

// 비밀번호 확인 유효성 검사
memberPwConfirm.addEventListener("input", checkPw);

function checkPw() {
  if (memberPw.value == memberPwConfirm.value) {
    pwMessage2.innerText = "비밀번호가 일치합니다.";
    pwMessage2.style.color = "green";
    pwMessage2.classList.add("confirm");
    pwMessage2.classList.remove("error");
  } else {
    pwMessage2.innerText = "비밀번호가 일치하지 않습니다.";
    pwMessage2.style.color = "red";
    pwMessage2.classList.add("error");
    pwMessage2.classList.remove("confirm");
  }
}

// 완료 버튼 클릭
completeBtn.addEventListener("click", function () {
  // 이메일 인증을 안하고 완료버튼을 눌렀을경우
  if (isCertOK == false) {
    alert("이메일 인증 먼저 완료해주세요!");
    return;
  }

  if (emailMessage.innerText === "가입되어 있지 않은 이메일입니다.") {
    alert("가입되어 있지 않은 이메일입니다. 다시 확인해주세요!");
  }

  // 유효성검사 안맞으면 못넘어감
  if (
    pwMessage1.innerText === "비밀번호 형식이 유효하지 않습니다." ||
    pwMessage2.innerText === "비밀번호가 일치하지 않습니다."
  ) {
    alert("비밀번호 형식이 유효하지 않거나 일치하지 않습니다!");
    return;
  }

  const pwFindForm = document.getElementById("pwFind-form");
  pwFindForm.submit();
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
