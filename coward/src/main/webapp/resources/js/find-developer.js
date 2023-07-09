// ******************Variables*************************
const target = document.querySelector(".target");
const rowDiv = document.getElementById("devListRow");

const stackButtons = document.querySelectorAll(".stack-btn");

/** 무한스크롤 페이징 기법용 변수 */
let page = 3;
/** 필터링용 변수 */
let filter = "";

/** 저장된 좋아요한 회원 목록 저장용 변수 */
let likedList = [];

// ****************Infinity Scroll*******************
// Note: 무한 스크롤용 인터섹션 옵저버 API
const observeIntersection = (target, callback) => {
  const observer = new IntersectionObserver((entries) => {
    entries.forEach((entry) => {
      if (entry.isIntersecting) {
        callback(filter);
      }
    });
  });
  observer.observe(target);
};

observeIntersection(target, getDevAjax);

// Note: col- > cr-form > developer-card 동적 생성
const createDev = (dev, likedList) => {
  const colDiv = document.createElement("div");
  colDiv.setAttribute("class", "col-sm-4 col-md-6 col-lg-4 is-new");

  const crForm = document.createElement("form");
  crForm.setAttribute("id", "cr-form");
  crForm.setAttribute("method", "POST");
  crForm.setAttribute("action", contextPath + "/chat/openChatRoom");

  const developerCard = document.createElement("div");
  developerCard.setAttribute("class", "developer-card");

  const developerProfile = document.createElement("div");
  developerProfile.setAttribute("class", "developer-profile");

  const developerImg = document.createElement("div");
  developerImg.setAttribute("class", "developer-img");

  const profileImgAvatar = document.createElement("div");
  profileImgAvatar.setAttribute("class", "profile-img avatar");

  const avatarImg = document.createElement("img");
  avatarImg.setAttribute("src", contextPath + "/" + dev.profileImg);

  const developerInfo = document.createElement("div");
  developerInfo.setAttribute("class", "developer-info");

  const developerTitle = document.createElement("div");
  developerTitle.setAttribute("class", "developer-title");

  const developerNick = document.createElement("p");
  developerNick.setAttribute("class", "developer-nick");
  developerNick.innerText = dev.memberNick;

  const developerType = document.createElement("div");
  developerType.setAttribute("class", "developer-type");
  developerType.innerText = dev.stack;

  const developerOneline = document.createElement("p");
  developerOneline.setAttribute("class", "developer-oneline");
  developerOneline.innerText = dev.slogan;

  const developerRecord = document.createElement("div");
  developerRecord.setAttribute("class", "developer-record");

  const recordDiv1 = document.createElement("div");
  const recordSpan1 = document.createElement("span");
  recordSpan1.innerText = "총 수익";
  const recordP1 = document.createElement("p");
  recordP1.innerText = dev.totalPrice + "만원";

  const recordDiv2 = document.createElement("div");
  const recordSpan2 = document.createElement("span");
  recordSpan2.innerText = "우승";
  const recordP2 = document.createElement("p");
  recordP2.innerText = dev.victoryCount + "회";

  const recordDiv3 = document.createElement("div");
  const recordSpan3 = document.createElement("span");
  recordSpan3.innerText = "총 참가";
  const recordP3 = document.createElement("p");
  recordP3.innerText = dev.attendCount + "건";

  const devChatBtnWrapper = document.createElement("div");
  const devleoperChatBtn = document.createElement("div");
  devleoperChatBtn.setAttribute("class", "developer-chat-btn");
  const chatBtnA = document.createElement("a");
  chatBtnA.setAttribute("class", "profile-btn btn-primary btn-32");
  chatBtnA.setAttribute("href", contextPath + "/mypage/info/" + dev.memberNo);
  chatBtnA.innerText = "프로필 보기";
  const chatBtn = document.createElement("button");
  chatBtn.setAttribute("type", "submit");
  chatBtn.setAttribute("class", "chat-button btn-primary btn-32");
  chatBtn.innerText = "채팅 하기";

  const likeButton = document.createElement("button");
  likeButton.setAttribute("id", "like-btn");

  if (likedList.includes(dev.memberNo)) {
    likeButton.setAttribute("class", "like-btn is-active");
  } else {
    likeButton.setAttribute("class", "like-btn");
  }

  likeButton.setAttribute("type", "button");
  likeButton.setAttribute(
    "onclick",
    "clickLikeBtn(" + loginMemberNo + "," + dev.memberNo + ", this)"
  );

  const likeButtonLable = document.createElement("label");
  likeButtonLable.setAttribute("for", "like-btn");

  const likeIcon = document.createElement("i");
  likeIcon.setAttribute("class", "ic-like-filled");

  devleoperChatBtn.appendChild(chatBtnA);
  devleoperChatBtn.appendChild(chatBtn);

  likeButtonLable.appendChild(likeIcon);

  likeButton.appendChild(likeButtonLable);

  devChatBtnWrapper.appendChild(devleoperChatBtn);

  if (loginMemberType == "C") {
    devChatBtnWrapper.appendChild(likeButton);
  }

  developerTitle.appendChild(developerNick);
  developerTitle.appendChild(developerType);

  developerInfo.appendChild(developerTitle);
  developerInfo.appendChild(developerOneline);

  recordDiv1.appendChild(recordSpan1);
  recordDiv1.appendChild(recordP1);

  recordDiv2.appendChild(recordSpan2);
  recordDiv2.appendChild(recordP2);

  recordDiv3.appendChild(recordSpan3);
  recordDiv3.appendChild(recordP3);

  developerRecord.appendChild(recordDiv1);
  developerRecord.appendChild(recordDiv2);
  developerRecord.appendChild(recordDiv3);

  profileImgAvatar.appendChild(avatarImg);
  developerImg.appendChild(profileImgAvatar);
  developerProfile.appendChild(developerImg);
  developerProfile.appendChild(developerInfo);

  developerCard.appendChild(developerProfile);
  developerCard.appendChild(developerRecord);
  developerCard.appendChild(devChatBtnWrapper);

  crForm.appendChild(developerCard);

  colDiv.appendChild(crForm);

  rowDiv.appendChild(colDiv);
};

// Note: 스켈레톤 UI 생성
const createDevSkeleton = () => {
  const colDiv = document.createElement("div");
  colDiv.setAttribute("class", "col-sm-4 col-md-6 col-lg-4 is-skeleton");

  const phItem = document.createElement("div");
  phItem.setAttribute("class", "ph-item");

  // Avatar Div

  const avatarCol = document.createElement("div");
  avatarCol.setAttribute("class", "ph-col-2");

  const phAvatar = document.createElement("div");
  phAvatar.setAttribute("class", "ph-avatar");

  avatarCol.appendChild(phAvatar);

  // Info Div

  const infoDiv = document.createElement("div");

  const phRowInfo = document.createElement("div");
  phRowInfo.setAttribute("class", "ph-row");

  const name = document.createElement("div");
  name.setAttribute("class", "ph-col-4");
  const empty1 = document.createElement("div");
  empty1.setAttribute("class", "ph-col-8 empty");
  const slogan = document.createElement("div");
  slogan.setAttribute("class", "ph-col-12");

  phRowInfo.appendChild(name);
  phRowInfo.appendChild(empty1);
  phRowInfo.appendChild(slogan);

  infoDiv.appendChild(phRowInfo);

  // Count Div

  const countsCol = document.createElement("div");
  countsCol.setAttribute("class", "ph-col-12");

  const phRowCounts = document.createElement("div");
  phRowCounts.setAttribute("class", "ph-row");

  const count1 = document.createElement("div");
  count1.setAttribute("class", "ph-col-2");

  const countEmpty1 = document.createElement("div");
  countEmpty1.setAttribute("class", "ph-col-2 empty");

  const count2 = document.createElement("div");
  count2.setAttribute("class", "ph-col-2");

  const countEmpty2 = document.createElement("div");
  countEmpty2.setAttribute("class", "ph-col-6 empty");

  const count3 = document.createElement("div");
  count3.setAttribute("class", "ph-col-2");

  phRowCounts.appendChild(count1);
  phRowCounts.appendChild(countEmpty1);
  phRowCounts.appendChild(count2);
  phRowCounts.appendChild(countEmpty2);
  phRowCounts.appendChild(count3);

  countsCol.appendChild(phRowCounts);

  // Button Div

  const buttonsCol = document.createElement("div");
  buttonsCol.setAttribute("class", "ph-col-12");

  const phRowButton = document.createElement("div");
  phRowButton.setAttribute("class", "ph-row");

  const button1 = document.createElement("div");
  button1.setAttribute("class", "ph-col-6 big");

  const button2 = document.createElement("div");
  button2.setAttribute("class", "ph-col-6 big");

  const button3 = document.createElement("div");
  button3.setAttribute("class", "ph-col-12 big");

  phRowButton.appendChild(button1);
  phRowButton.appendChild(button2);
  phRowButton.appendChild(button3);

  buttonsCol.appendChild(phRowButton);

  // 조립

  phItem.appendChild(avatarCol);
  phItem.appendChild(infoDiv);
  phItem.appendChild(countsCol);
  phItem.appendChild(buttonsCol);

  colDiv.appendChild(phItem);

  rowDiv.appendChild(colDiv);
};

/** 스켈레톤 UI에서 dev로 전환 */
function showDevAfterTwoSecond(dev, likedList) {
  createDevSkeleton();
  createDev(dev, likedList);

  const skeletons = document.querySelectorAll(".is-skeleton");
  const newDev = document.querySelectorAll(".is-new");

  // 2초 뒤 스켈레톤 숨기고, 실제 콘텐츠 보여주기
  setTimeout(() => {
    skeletons.forEach((sk) => (sk.style.display = "none"));
    newDev.forEach((nd) => (nd.style.display = "block"));
  }, 700);
}

// Note: developer 요청 Ajax
function getDevAjax(filter) {
  if (loginMemberNo) {
    getLikedList();
  }

  $.ajax({
    url: "findDev",
    type: "POST",
    data: { page: page, filter: filter },
    dataType: "json",
    success: function (devList) {
      devList.forEach((dev) => {
        showDevAfterTwoSecond(dev, likedList);
      });
      page++;
    },
    error: function () {
      console.log("getDevCardAjax 실패");
    },
  });
}

// *******************Filter********************
// Note: 개발자 찾기 필터링
stackButtons.forEach(function (button) {
  button.addEventListener("click", function () {
    filter = this.querySelector('input[name="userStack"]').value;

    page = 0;
    rowDiv.innerHTML = "";

    // getDevAjax(filter);
  });
});

// *******************LikeDev*******************
// Note: 좋아요 기능
function clickLikeBtn(cMemberNo, pMemberNo, likeBtn) {
  // 비회원이 클릭할 경우 콘솔에 출력
  if (!cMemberNo) {
    return alert("로그인 후 이용해주세요!");
  }

  if (likeBtn.classList.contains("is-active")) {
    // is-active가 있으면 == 좋아요가 되어 있으면
    likeDevAjax(cMemberNo, pMemberNo, "dislike");
    likeBtn.classList.remove("is-active");
  } else {
    likeDevAjax(cMemberNo, pMemberNo, "like");
    likeBtn.classList.add("is-active");
  }
}

function likeDevAjax(cMemberNo, pMemberNo, flag) {
  $.ajax({
    url: "likeDev",
    type: "POST",
    data: { cMemberNo: cMemberNo, pMemberNo: pMemberNo, flag: flag },
    dataType: "json",
    success: function (result) {
      if (result > 0) {
        console.log(`clickLikeBtn 성공 :: ${cMemberNo} to ${pMemberNo}`);
      }
    },
    error: function () {
      console.log("clickLikeBtn 실패");
    },
  });
}

// Note: developer 요청 Ajax
function getLikedList() {
  $.ajax({
    url: "likedList",
    type: "POST",
    dataType: "json",
    success: function (likedListResult) {
      likedList = likedListResult;
    },
    error: function () {
      console.log("getLikedList 실패");
    },
  });
}
