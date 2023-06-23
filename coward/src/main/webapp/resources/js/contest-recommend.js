var step1 = document.getElementById("recommend-step-1");
var step2 = document.getElementById("recommend-step-2");
var step3 = document.getElementById("recommend-step-3");
var nextBtn1 = document.getElementById("next1");
var nextBtn2 = document.getElementById("next2");
var nextBtn3 = document.getElementById("next3");
var backBtn1 = document.getElementById("back1");
var backBtn2 = document.getElementById("back2");
var backBtn3 = document.getElementById("back3");

function next1() {
  step1.style.display = "none";
  step2.style.display = "block";
  nextBtn1.style.display = "none";
  nextBtn2.style.display = "block";
  backBtn2.style.display = "block";
}

function next2() {
  step2.style.display = "none";
  step3.style.display = "block";
  nextBtn2.style.display = "none";
  nextBtn3.style.display = "block";
  backBtn2.style.display = "none";
  backBtn3.style.display = "block";
}

function back2() {
  step1.style.display = "block";
  step2.style.display = "none";
  nextBtn1.style.display = "block";
  nextBtn2.style.display = "none";
  backBtn2.style.display = "none";
}

function back3() {
  step2.style.display = "block";
  step3.style.display = "none";
  nextBtn2.style.display = "block";
  nextBtn3.style.display = "none";
  backBtn2.style.display = "block";
  backBtn3.style.display = "none";
}

/*
const slideValue = document.getElementById("recommend-reward-slide-bubble");
const inputSlider = document.getElementById("recommend-reward-slide");
inputSlider.oninput = () => {
  let value = inputSlider.value;
  slideValue.style.left = value / 2 + "%";
};*/
