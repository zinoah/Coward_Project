const adModal = document.getElementById("ad-modal");
const overlay = document.getElementById("overlay");
const adCloseBtn = document.getElementById("ad-close-button");

adCloseBtn.addEventListener("click", () => {
  adModal.classList.remove("is-active");
  overlay.classList.remove("is-active");
});

/** menubar 활성화 상태에서 뒷배경 클릭 시 비활성화 하는 click 이벤트 */
overlay.addEventListener("click", () => {
  adModal.classList.remove("is-active");
  overlay.classList.remove("is-active");
});
