const nextBtn = document.querySelector(".next-btn");
const changePwBox = document.querySelector(".pw-change-box2");
const currentPwBox = document.querySelector(".pw-change-box");

const currentPw = document.getElementsByName("currentPw")[0];
const newPw = document.getElementsByName("newPw")[0];
const newPwConfirm = document.getElementsByName("newPwConfirm")[0];

nextBtn.addEventListener("click", function () {
  if (currentPw.value.trim().length == 0) {
    alert("현재 비밀번호를 입력해주세요.");
    currentPw.focus();
    return false;
  }

  changePwBox.style.display = "block";
  currentPwBox.style.display = "none";
});

function changePwValidate() {
  // 비밀번호 정규표현식
  const regEx = /^(?=.*[a-z])(?=.*[A-Z]).{8,}$/;

  const currentPw = document.getElementsByName("currentPw")[0];
  const newPw = document.getElementsByName("newPw")[0];
  const newPwConfirm = document.getElementsByName("newPwConfirm")[0];

  nextBtn.addEventListener("click", function () {
    if (currentPw.value.trim().length == 0) {
      alert("현재 비밀번호를 입력해주세요.");
      currentPw.focus();
      return false;
    }

    changePwBox.style.display = "block";
    currentPwBox.style.display = "none";
  });

  // 새 비밀번호 미작성
  if (newPw.value.trim().length == 0) {
    alert("새로 사용할 비밀번호를 입력해주세요.");
    newPw.focus();
    return false;
  }

  if (!regEx.test(newPw.value)) {
    alert("8자리 이상, 대소문자를 포함해주세요!");
    newPw.focus();
    return false;
  }

  // 새 비밀번호 확인 미작성
  if (newPwConfirm.value.trim().length == 0) {
    alert("새로 사용할 비밀번호를 확인해주세요.");
    newPwConfirm.focus();
    return false;
  }

  if (newPw.value != newPwConfirm.value) {
    alert("비밀번호가 일치하지 않습니다.");
    newPwConfirm.focus();
    return false;
  }

  return true; // 위 조건을 모두 수행하지 않은 경우 true 반환
}
