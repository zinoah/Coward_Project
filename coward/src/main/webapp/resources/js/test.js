function loginBtnClick(userId, userPw) {
  $.ajax({
    url: "/test/member/memberLogin",
    data: {
      userId: userId,
      userPw: userPw,
    },
    type: "POST",

    sucsess: function (result) {
      if (result != null) {
        alert("회원 로그인이 완료되었습니다.");
      } else {
        alert("로그인에 실패하였습니다.");
      }
    },
  });
}
