var singleBox = document.querySelector(".single-box");
var companyBox = document.querySelector(".company-box");

singleBox.addEventListener("click", function () {
  singleBox.classList.toggle("clicked");
  companyBox.classList.remove("clicked");
});

companyBox.addEventListener("click", function () {
  companyBox.classList.toggle("clicked");
  singleBox.classList.remove("clicked");
});

const overlay = document.getElementById("overlay");

const close1 = document.querySelector(".close1");
const close2 = document.querySelector(".close2");
const close3 = document.querySelector(".close3");

const term1 = document.querySelector(".terms1");
const term2 = document.querySelector(".terms2");
const term3 = document.querySelector(".terms3");
const agreeModal_1 = document.querySelector(".agree-box1");
const agreeModal_2 = document.querySelector(".agree-box2");
const agreeModal_3 = document.querySelector(".agree-box3");

term1.addEventListener("click", function () {
  overlay.classList.add("is-active");
  agreeModal_1.style.display = "block";
});

term2.addEventListener("click", function () {
  overlay.classList.add("is-active");
  agreeModal_2.style.display = "block";
});

term3.addEventListener("click", function () {
  overlay.classList.add("is-active");
  agreeModal_3.style.display = "block";
});

overlay.addEventListener("click", () => {
  overlay.classList.remove("is-active");
  agreeModal_1.style.display = "none";
  agreeModal_2.style.display = "none";
  agreeModal_3.style.display = "none";
});

close1.addEventListener("click", function () {
  overlay.classList.remove("is-active");
  agreeModal_1.style.display = "none";
  agreeModal_2.style.display = "none";
  agreeModal_3.style.display = "none";
});

close2.addEventListener("click", function () {
  overlay.classList.remove("is-active");
  agreeModal_1.style.display = "none";
  agreeModal_2.style.display = "none";
  agreeModal_3.style.display = "none";
});

close3.addEventListener("click", function () {
  overlay.classList.remove("is-active");
  agreeModal_1.style.display = "none";
  agreeModal_2.style.display = "none";
  agreeModal_3.style.display = "none";
});
