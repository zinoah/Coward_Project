// // gallerycard hover시 이벤트
// const sliderCard = document.querySelectorAll(".contest-slider-card");

// const cardInfoTitle = document.querySelector(
//   ".contest-slider-card-info-title > p"
// );

// sliderCard.forEach((card) =>
//   card.addEventListener("mouseenter", function () {
//     this.classList.add("is-hover");
//   })
// );

// sliderCard.forEach((card) =>
//   card.addEventListener("mouseleave", function () {
//     this.classList.remove("is-hover");
//   })
// );

// NOTE: 뭔지 모르겠다

// const sliderInfo = document.querySelectorAll(".developer-card");

// sliderCard.forEach((card) =>
//   card.addEventListener("mouseenter", function () {
//     this.classList.add("is-hover");
//   })
// );

// sliderCard.forEach((card) =>
//   card.addEventListener("mouseleave", function () {
//     this.classList.remove("is-hover");
//   })
// );

// sliderInfo.forEach((card) =>
//   card.addEventListener("mouseenter", function () {
//     this.classList.add("is-hover");
//   })
// );

// Note: 개발자 찾기 무한 스크롤 적용

const target = document.querySelector(".target");

const rowDiv = document.getElementById("devListRow");

/** 무한스크롤 페이징 기법용 변수 */
let page = 3;

// Note: developer 요청 Ajax
function getDevAjax() {
  $.ajax({
    url: "findDev",
    type: "POST",
    data: { page: page },
    dataType: "json",
    success: function (devList) {
      devList.forEach((dev) => {
        createDev(dev);
      });
      page++;
    },
    error: function () {
      console.log("getDevCardAjax 실패");
    },
  });
}

// Note: 무한 스크롤용 인터섹션 옵저버 API
const observeIntersection = (target, callback) => {
  const observer = new IntersectionObserver((entries) => {
    entries.forEach((entry) => {
      if (entry.isIntersecting) {
        callback();
      }
    });
  });
  observer.observe(target);
};

// Note: col- > cr-form > developer-card 동적 생성
const createDev = (dev) => {
  const colDiv = document.createElement("div");
  colDiv.setAttribute("class", "col-sm-4 col-md-6 col-lg-4");

  const crForm = document.createElement("form");
  crForm.setAttribute("id", "cr-form");
  crForm.setAttribute("method", "POST");
  crForm.setAttribute("action", contextPath + "/chat/openChatRoom");

  const developerCard = document.createElement("div");
  developerCard.setAttribute("class", "developer-card is-new");

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
  recordP3.innerText = dev.attendCound + "건";

  const devChatBtnWrapper = document.createElement("div");
  const devleoperChatBtn = document.createElement("div");
  devleoperChatBtn.setAttribute("class", "developer-chat-btn");
  const chatBtnA = document.createElement("a");
  chatBtnA.setAttribute("class", "profile-btn btn-primary btn-32");
  chatBtnA.setAttribute("href", contextPath + "/mypage/info/" + dev.memberNo);
  chatBtnA.innerText = "프로필 보기";
  const chatBtn = document.createElement("button");
  chatBtn.setAttribute("type", "submit");
  chatBtn.setAttribute("class", "btn-primary btn-32");
  chatBtn.innerText = "채팅 하기";

  const likeButton = document.createElement("button");
  likeButton.setAttribute("id", "like-btn");
  likeButton.setAttribute("class", "like-btn");

  const likeButtonLable = document.createElement("label");
  likeButtonLable.setAttribute("for", "like-btn");

  const likeIcon = document.createElement("i");
  likeIcon.setAttribute("class", "ic-like-filled");

  devleoperChatBtn.appendChild(chatBtnA);
  devleoperChatBtn.appendChild(chatBtn);

  likeButtonLable.appendChild(likeIcon);

  likeButton.appendChild(likeButtonLable);

  devChatBtnWrapper.appendChild(devleoperChatBtn);
  devChatBtnWrapper.appendChild(likeButton);

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

// is-skeleton
const createDevSkeleton = () => {
  const phItem = document.createElement("div");
  phItem.setAttribute("class", "ph-item");

  const avatarCol = document.createElement("div");
  phCol2.setAttribute("class", "ph-col-2");

  const phAvatar = document.createElement("div");
  phAvatar.setAttribute("class", "ph-avatar");

  const infoDiv = document.createElement("div");

  const phRowInfo = document.createElement("div");
  phRowInfo.setAttribute("class", "ph-row");

  const name = document.createElement("div");
  name.setAttribute("class", "ph-col-4");
  const empty1 = document.createElement("div");
  empty1.setAttribute("class", "ph-col-8 empty");
  const slogan = document.createElement("div");
  slogan.setAttribute("class", "ph-col-12");

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

  const buttonsCol = document.createElement("div");
  phItem.setAttribute("class", "ph-col-12");

  const phRowButton = document.createElement("div");
  phRowButton.setAttribute("class", "ph-row");

  const button1 = document.createElement("div");
  button1.setAttribute("class", "ph-col-6 big");

  const button2 = document.createElement("div");
  button2.setAttribute("class", "ph-col-6 big");

  const button3 = document.createElement("div");
  button3.setAttribute("class", "ph-col-12 big");
};

/** 스켈레톤 UI에서 dev로 전환 */
function showDevAfterTwoSecond(dev) {
  createDevSkeleton();
  createDev(dev);

  const skeletons = document.querySelectorAll(".is-skeleton");
  const newDev = document.querySelectorAll(".is-new");

  // 2초 뒤 스켈레톤 숨기고, 실제 콘텐츠 보여주기
  setTimeout(() => {
    skeletons.forEach((sk) => (sk.style.display = "none"));
    newDev.forEach((nd) => (nd.style.display = "block"));
  }, 700);
}

observeIntersection(target, getDevAjax);
