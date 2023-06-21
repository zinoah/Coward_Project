const menubarBtn = document.getElementById("menubar-btn");
const menuBar = document.getElementById("menubar");

/** 모바일, 태블릿 햄버거 버튼 클릭 시 menubar 활성화하는 click 이벤트 */
menubarBtn.addEventListener("click", () => {
  menuBar.classList.add("is-active");
  overlay.classList.add("is-active");
});

/** menubar 활성화 상태에서 뒷배경 클릭 시 비활성화 하는 click 이벤트 */
overlay.addEventListener("click", () => {
  menuBar.classList.remove("is-active");
  overlay.classList.remove("is-active");
});
