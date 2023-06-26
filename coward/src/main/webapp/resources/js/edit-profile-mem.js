// 회원 프로필 이미지 변경
const inputImage = document.getElementById("edit-img");

if (inputImage != null) {
  // inputImage 요소가 화면에 존재 할 때

  // 파일이 선택 될 때 change 이벤트가 발생
  inputImage.addEventListener("change", function () {
    if (this.files[0] != undefined) {
      // 파일이 선택되었을 때

      const reader = new FileReader();
      // - 웹 애플리케이션이 비동기적으로 데이터를 읽기 위하여 사용하는 객체

      reader.readAsDataURL(this.files[0]);
      // FileReader.readAsDataURL(파일)
      // - 지정된 파일의 내용을 읽기 시작함.
      // - 읽어오는게 완료되면 result 속성 data:에
      //   읽어온 파일의 위치를 나타내는 URL이 포함된다.
      //  -> 해당 URL을 이용해서 브라우저에 이미지를 볼 수 있다.

      // FileReader.onload = function(){}
      // - FileReader가 파일을 다 읽어온 경우 함수를 수행
      reader.onload = function (e) {
        // 고전 이벤트 모델
        // e : 이벤트 발생 객체
        // e.target : 이벤트가 발생한 요소(객체) -> FileReader
        // e.target.result : FileReader가 읽어온 파일의 URL

        // 프로필 이미지의 src 속성의 값을 FileReader가 읽어온 파일의 URL로 변경
        const profileImage = document.getElementById("profile-image");

        profileImage.setAttribute("src", e.target.result);
        // -> setAttribute() 호출 시 중복되는 속성이 존재하면 덮어쓰기
      };
    }
  });
}

/*function checkbox() {
  var values = document.getElementsByName("skill"); // 형태는 배열이 됨

  var count = 0;
  for (var i = 0; i < values.length; i++) {
    if (values[i].checked) {
      //count++;
    }
  }
}
*/
