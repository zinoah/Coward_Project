// SELECT BOX 에 SELECTED 지정해주기
function setRegionSelected() {
  var loginMemberRegionNo = document.getElementById(
    "loginMemberRegionNo"
  ).value;
  var regionSelect = document.getElementById("regionSelect");

  for (var i = 0; i < regionSelect.options.length; i++) {
    if (regionSelect.options[i].value === loginMemberRegionNo) {
      regionSelect.options[i].selected = true;
      break;
    }
  }
}

window.onload = setRegionSelected;

// 회원 프로필 이미지 변경(미리보기)
const inputImg = document.getElementById("inputImg");

if (inputImg != null) {
  inputImg.addEventListener("change", function () {
    // this : 이벤트가 발생한 요소 (input type="file")

    // files : input type="file"만 사용 가능한 속성으로
    //         선택된 파일 목록(배열)을 반환

    if (this.files[0] != undefined) {
      const reader = new FileReader();

      reader.readAsDataURL(this.files[0]);

      reader.onload = function (e) {
        // 프로필 이미지의 src 속성의 값을 FileReader가 읽어온 파일의 URL로 변경
        const profileImg = document.getElementById("profileImg");

        profileImg.setAttribute("src", e.target.result);
        // -> setAttribute() 호출 시 중복되는 속성이 존재하면 덮어쓰기

        document.getElementById("delete").value = 0;
      };
    }
  });
}
