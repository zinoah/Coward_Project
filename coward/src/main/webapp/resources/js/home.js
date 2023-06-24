// ************************Variables************************

const adModal = document.getElementById("ad-modal");
const overlay = document.getElementById("overlay");
const adCloseBtn = document.getElementById("ad-close-button");
const adTodaySkipBtn = document.getElementById("ad-today-skip-button");

// 하루동안 보지않기 쿠키 여부 확인
const modalShown = getCookie("modalShown");

// ************************Functions************************

/** ad-modal 여는 함수 */
function openAdModal() {
  adModal.classList.add("is-active");
  overlay.classList.add("is-active");

  document.body.style.overflow = "hidden";
}

/** ad-modal 닫는 함수 */
function closeAdModal() {
  adModal.classList.remove("is-active");
  overlay.classList.remove("is-active");

  document.body.style.overflow = "auto";
}

/** name으로 전달받은 키와 일치하는 쿠키 get 함수 */
function getCookie(name) {
  const cookieArr = document.cookie.split(";");
  for (let i = 0; i < cookieArr.length; i++) {
    const cookiePair = cookieArr[i].split("=");
    if (name === cookiePair[0].trim()) {
      return decodeURIComponent(cookiePair[1]);
    }
  }
  return null;
}

/** 하루동안 보지 않기용 쿠키 set 함수 */
function setCookie(name, value, days) {
  const expires = new Date();
  expires.setTime(expires.getTime() + days * 24 * 60 * 60 * 1000);
  document.cookie =
    name +
    "=" +
    encodeURIComponent(value) +
    ";expires=" +
    expires.toUTCString() +
    ";path=/";
}

// ************************Events************************

// home에서 새로고침 시 브라우저 스크롤 최상단으로 이동
window.onload = function () {
  setTimeout(function () {
    scrollTo(0, 0);
  }, 100);
};

// 오늘하루 보지않기 버튼 click 이벤트
// 저장된 modalShown이라는 쿠키가 없는 경우
if (!modalShown) {
  // .is-active 활성화
  openAdModal();

  // adTodaySkipBtn 클릭 시 is-active 비활성화 및 쿠키 추가
  adTodaySkipBtn.addEventListener("click", function () {
    closeAdModal();
    setCookie("modalShown", "true", 1); // 1일 동안 쿠키 설정
  });
} else {
  document.body.style.overflow = "auto";
}

// ad-modal 닫기 버튼 클릭 시 비활성화 하는 click 이벤트
adCloseBtn.addEventListener("click", () => {
  closeAdModal();
});

// menubar 활성화 상태에서 뒷배경 클릭 시 비활성화 하는 click 이벤트
overlay.addEventListener("click", () => {
  closeAdModal();
  document.body.style.overflow = "auto";
});
