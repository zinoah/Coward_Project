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

let counter = 0;
var clicked = false;
// 북마크 COUNT
function bookmark(bookmark, contestNo) {
  const bookmarkBtn = document.querySelector(
    ".contest-briefing-sticky-box-button-bookmark"
  );
  console.log(typeof bookmark);
  console.log(typeof contestNo);

  if (!clicked) {
    counter = 1; // 처음 클릭 시 1 반환
    clicked = true;
    bookmarkBtn.style.color = "#3aacf8";
    bookmarkCount = bookmark + counter;
  } else {
    counter = -1; // 두 번째 클릭 시 -1 반환
    clicked = false;
    bookmarkBtn.style.color = "#8c8d96";
    bookmarkCount = bookmark + counter;
  }
  console.log(counter);
  console.log(bookmarkCount);

  $.ajax({
    url: "../bookmark",
    data: { bookmarkCount: bookmarkCount, contestNo: contestNo },
    type: "GET",
    success: function (result) {
      const bookmarkCount = document.getElementById("bookmarkCount");
      bookmarkCount.innerText = result + "명";
      console.log(result);
    },
    error: function () {
      // 비동기 통신(ajax) 중 오류가 발생한 경우
      console.log("에러 발생");
    },
  });
} */