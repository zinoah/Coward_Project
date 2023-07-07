// URL 복사
const clip = async () => {
  try {
    let url = "";
    let textarea = document.createElement("textarea");
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

let clicked = false;
// 북마크 COUNT
function bookmark(bookmarkCount, contestNo, memberNo) {
  const bookmarkBtn = document.querySelector(
    ".contest-briefing-sticky-box-button-bookmark"
  );

  if (!clicked) {
    clicked = true;
    bookmarkBtn.style.color = "#3aacf8";
    const flag = 1;
    bookmarkAjax(bookmarkCount, contestNo, memberNo, flag);
  } else {
    clicked = false;
    bookmarkBtn.style.color = "#8c8d96";
    const flag = -1;
    bookmarkAjax(bookmarkCount, contestNo, memberNo, flag);
  }
}

/** bookmark Ajax */
function bookmarkAjax(bookmarkCount, contestNo, memberNo, flag) {
  $.ajax({
    url: "../bookmark",
    data: {
      bookmarkCount: bookmarkCount,
      contestNo: contestNo,
      memberNo: memberNo,
      flag: flag,
    },
    type: "GET",
    success: function (result) {
      console.log(result);
      const bookmarkArea = document.getElementById("bookmark-area");
      bookmarkArea.innerHTML = "";

      const bookmarkAreaTitle = document.createElement("p");
      bookmarkAreaTitle.innerText = "북마크 수";
      const bookmarkAreaResult = document.createElement("p");
      bookmarkAreaResult.id = "bookmarkCount";
      bookmarkAreaResult.innerText = result + "명";

      bookmarkArea.append(bookmarkAreaTitle);
      bookmarkArea.append(bookmarkAreaResult);
    },
    error: function () {
      // 비동기 통신(ajax) 중 오류가 발생한 경우
      console.log("에러 발생");
    },
  });
}
