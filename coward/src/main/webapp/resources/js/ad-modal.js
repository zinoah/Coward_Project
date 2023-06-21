const adModal = document.getElementById("ad-modal");
const overlay = document.getElementById("overlay");
const adCloseBtn = document.getElementById("ad-close-button");

adCloseBtn.addEventListener("click", () => {
  adModal.classList.remove("is-active");
  overlay.classList.remove("is-active");
});
