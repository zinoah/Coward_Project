const checkFormBtn = document.querySelectorAll(".checkFormBtn");
const deleteFormBtn = document.getElementById("deleteFormBtn");
const modal = document.querySelector(".modal");
const memberNo = document.getElementById("memberNo");

//클릭시 모달창 나오게 하기
checkFormBtn.forEach((button) => {
  button.addEventListener("click", function (getMemberNo) {
    const selectedNo = this.dataset.selectedNo;
  });
});

// 모달창 정보 조회 (AJAX)
function getMemberNo(selectedNo) {
  const modal = document.querySelector(".modal");
  const result = document.querySelector(".intro");

  modal.style.display = "block";
  console.log(selectedNo);
  memberNo.value = selectedNo;
  console.log("멤버넘버 : " + memberNo.value);

  $.ajax({
    url: contextPath + "/mypage/winnerSelect/" + contestNo,
    data: { memberNo: memberNo.value },
    type: "POST",
    dataType: "json",

    success: function (response) {
      const contestAttend = response;
      result.innerHTML = "";

      if (contestAttend != null) {
        // contestAttend 순회하면서 요소를 생성하고 추가

        contestAttend.forEach((contestAttend) => {
          const div = document.createElement("div");

          const h5Intro = document.createElement("h5");
          h5Intro.className = "simple-intro-title";
          const pIntro = document.createElement("p");
          pIntro.innerText = "간단 설명";
          h5Intro.appendChild(pIntro);

          const introDiv = document.createElement("div");
          introDiv.className = "intro-input";
          const textarea = document.createElement("textarea");
          textarea.rows = "4";
          textarea.cols = "40";
          textarea.style.resize = "none";
          textarea.innerText = contestAttend.description;
          introDiv.appendChild(textarea);

          const fileBtnDiv = document.createElement("div");
          fileBtnDiv.className = "fileBtn";
          const a = document.createElement("a");
          a.href = contextPath + "/" + contestAttend.pptFile;
          a.download = "contest";
          const button = document.createElement("button");
          button.type = "button";
          button.className = "btn-yellow btn-32";
          button.innerText = "File Download";
          a.appendChild(button);
          fileBtnDiv.appendChild(a);

          const h5Github = document.createElement("h5");
          h5Github.innerText = "github 주소";

          const githubDiv = document.createElement("div");
          githubDiv.className = "github-input";
          githubDiv.innerText = contestAttend.githubAddress;

          div.appendChild(h5Intro);
          div.appendChild(introDiv);
          div.appendChild(fileBtnDiv);
          div.appendChild(h5Github);
          div.appendChild(githubDiv);

          result.appendChild(div);
        });
      } else {
        result.innerText = "조회 불가";
      }
    },
    error: function () {
      // 비동기 통신(ajax) 중 오류가 발생한 경우
      console.log("에러 발생");
    },
  });
}

//확인 버튼 누르면 모달창 끄기
deleteFormBtn.addEventListener("click", deleteModal);

function deleteModal() {
  modal.style.display = "none";
}
