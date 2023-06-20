Dropzone.autoDiscover = false; // deprecated 된 옵션. false로 해놓는걸 공식문서에서 명시
const dropzone = new Dropzone("div.dropzone", {
  url: "https://httpbin.org/post",
  method: "post",
  autoProcessQueue: false, // 자동으로 보내기. true : 파일 업로드 되자마자 서버로 요청, false : 서버에는 올라가지 않은 상태. 따로 this.processQueue() 호출시 전송
  clickable: true, // 클릭 가능 여부
  autoQueue: false, // 드래그 드랍 후 바로 서버로 전송
  createImageThumbnails: true, //파일 업로드 썸네일 생성

  maxFiles: 6, // 업로드 파일수
  maxFilesize: 100, // 최대업로드용량 : 100MB
  paramName: "image", // 서버에서 사용할 formdata 이름 설정 (default는 file)
  parallelUploads: 6, // 동시파일업로드 수(이걸 지정한 수 만큼 여러파일을 한번에 넘긴다.)
  uploadMultiple: false, // 다중업로드 기능
  timeout: 300000, //커넥션 타임아웃 설정 -> 데이터가 클 경우 꼭 넉넉히 설정해주자

  addRemoveLinks: true, // 업로드 후 파일 삭제버튼 표시 여부
  dictRemoveFile: "삭제", // 삭제버튼 표시 텍스트
  acceptedFiles: ".jpeg,.jpg,.png,.gif,.JPEG,.JPG,.PNG,.GIF", // 이미지 파일 포맷만 허용

  init: function () {
    // 최초 dropzone 설정시 init을 통해 호출
    console.log("최초 실행");
    let myDropzone = this; // closure 변수 (화살표 함수 쓰지않게 주의)

    // 서버에 제출 submit 버튼 이벤트 등록
    const submitBtn = document.querySelector(".submit-btn");
    submitBtn.addEventListener("click", function () {
      console.log("업로드");

      // 거부된 파일이 있다면
      if (myDropzone.getRejectedFiles().length > 0) {
        let files = myDropzone.getRejectedFiles();
        console.log("거부된 파일이 있습니다.", files);
        return;
      }

      myDropzone.processQueue(); // autoProcessQueue: false로 해주었기 때문에, 메소드 api로 파일을 서버로 제출
    });

    // 파일이 업로드되면 실행
    this.on("addedfile", function (file) {
      // 중복된 파일의 제거
      if (this.files.length) {
        // -1 to exclude current file
        var hasFile = false;
        for (var i = 0; i < this.files.length - 1; i++) {
          if (
            this.files[i].name === file.name &&
            this.files[i].size === file.size &&
            this.files[i].lastModifiedDate.toString() ===
              file.lastModifiedDate.toString()
          ) {
            hasFile = true;
            this.removeFile(file);
          }
        }
        if (!hasFile) {
          addedFiles.push(file);
        }
      } else {
        addedFiles.push(file);
      }
    });

    // 업로드한 파일을 서버에 요청하는 동안 호출 실행
    this.on("sending", function (file, xhr, formData) {
      console.log("보내는중");
    });

    // 서버로 파일이 성공적으로 전송되면 실행
    this.on("success", function (file, responseText) {
      console.log("성공");
    });

    // 업로드 에러 처리
    this.on("error", function (file, errorMessage) {
      alert(errorMessage);
    });
  },
});
