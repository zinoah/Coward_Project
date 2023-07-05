const skillList = document.getElementsByName("skill"); // 요구 기술

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

const pptFileInput = document.getElementById("pptFileInput");
