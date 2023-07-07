console.log("main.js loaded.");

// 로그인 시 아이디,비밀번호 입력 확인

function loginValidate() {
  // 로그인 유효성 검사

  const inputEmail = document.getElementsByName("memberId")[0];
  const inputPw = document.getElementsByName("memberPw")[0];

  // 아이디 입력되지 않은 경우 false를 반환
  if (inputEmail.value.trim().length == 0) {
    alert("이메일을 입력해주세요.");
    inputEmail.value = "";
    inputEmail.focus();
    return false; // 기본 이벤트 제거를 위해 false 반환
  }

  // 비밀번호를 입력하지 않은 경우 false 반환
  if (inputPw.value.trim() == "") {
    alert("비밀번호를 입력해주세요.");
    inputPw.value = "";
    inputPw.focus();
    return false;
  }

  return true; // form 태그 기본 이벤트 정상 수행
}

// 아이디 저장 체크박스가 체크 되었을 때 이벤트 처리

if (document.getElementById("saveId") != null) {
  document.getElementById("saveId").addEventListener("change", function () {
    // 체크 여부 확인
    console.log(this.checked);
    if (this.checked) {
      // 체크박스가 체크된 경우

      const str =
        "개인 정보 보호를 위해 개인 PC에서의 사용을 권장합니다. 개인 PC가 아닌 경우 취소를 눌러주세요.";

      //confirm(str) // 확인(true) / 취소(false) 대화상자

      if (!confirm(str)) {
        // 취소를 눌렀을 때
        this.checked = false; // 체크 해제
      }
    }
  });
}

// 비밀번호 보기, 숨기기
$(document).ready(function () {
  $(".eye").on("click", function () {
    var inputPw = $(this).prev(".input-pw");
    inputPw.toggleClass("active");

    if (inputPw.hasClass("active")) {
      $(this)
        .attr("class", "ic-eye-open eye")
        .siblings(".input-pw")
        .attr("type", "text");
    } else {
      $(this)
        .attr("class", "ic-eye-close eye")
        .siblings(".input-pw")
        .attr("type", "password");
    }
  });
});
