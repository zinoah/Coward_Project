/* // URL 복사
const clip = async () => {
  try {
    var url = "";
    var textarea = document.createElement("textarea");
    document.body.appendChild(textarea);
    textarea.style.display = "none";
    url = window.document.location.href;
    textarea.value = url;
    await navigator.clipboard.writeText(textarea.value);
    alert("공모전 주소복사 성공!");
  } catch (err) {
    alert("주소복사 실패");
  }
};

// 북마크 COUNT
function bookmark(bookmark) {
  const bookmarkBtn = document.querySelector(
    ".contest-briefing-sticky-box-button-bookmark"
  );

  bookmarkBtn.style.color = "#3aacf8";

  $.ajax({
    url: "emailDupCheck",
    data: { bookmark: bookmark },
    type: "GET",
    success: function (result) {
      if (result == 1) {
      } else {
      }
    },

    error: function () {
      // 비동기 통신(ajax) 중 오류가 발생한 경우
      console.log("에러 발생");
    },
  });
} */