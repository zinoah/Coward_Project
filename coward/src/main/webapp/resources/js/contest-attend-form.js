const skillList = document.getElementsByName("skill"); // 요구 기술
const fileInput = document.getElementById("pptFileInput"); // 파일 인풋
const fileLabel = document.getElementById("file-label"); // 파일  인풋 라벨

// 스킬 리스트
skillList.forEach((skill) =>
  skill.addEventListener("change", function () {
    console.log(skill.value);
    console.log(skill.checked);

    const label = skill.parentElement;
    if (skill.checked == true) {
      label.classList.add("checked");
    } else {
      label.classList.remove("checked");
    }
  })
);

// 파일 벨류 존재시 색변경
fileInput.addEventListener("change", function () {
  // 파일이 선택되었을 경우 버튼 색 변경
  if (fileInput.files.length > 0) {
    fileLabel.style.backgroundColor = "#3aacf8";
    fileLabel.style.color = "white";
  }
});
