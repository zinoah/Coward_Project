function changePwValidate() {
  const currentPw = document.getElementsByName("currentPw")[0];
  const newPw = document.getElementsByName("newPw")[0];
  const newPwConfirm = document.getElementsByName("newPwConfirm")[0];

  // 비밀번호 정규표현식
  const regEx = /^(?=.*[a-z])(?=.*[A-Z]).{8,}$/;

  // 현재 비밀번호 미작성
  if (currentPw.value.trim().length == 0) {
    /*alert("현재 비밀번호를 입력해주세요.");
        currentPw.focus();
        return false;*/

    return printAlert(currentPw, "현재 비밀번호를 입력해주세요.");
  }

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
    return printAlert(newPwConfirm, "새로 사용할 비밀번호를 확인해주세요,");
  }

  if (newPw.value != newPwConfirm.value) {
    return printAlert(newPwConfirm, "새 비밀번호가 일치하지 않습니다.");
  }

  return true; // 위 조건을 모두 수행하지 않은 경우 true 반환
}
