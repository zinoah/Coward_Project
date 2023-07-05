// var btnAll = document.getElementById("all");
// var btnRecruiting = document.getElementById("recruiting");
// var btnCasting = document.getElementById("casting");
// var btnEnd = document.getElementById("end");

// var conStatus = document.getElementById("conStatus");
// const result = document.getElementById("contest-slider");

// // document.addEventListener("DOMContentLoaded", function () {
// //   btnAll.click();
// // });

// btnAll.addEventListener("click", function () {
//   conStatus.value = "전체";
//   console.log("전체 Clicked"); // 로그 메시지 추가
//   console.log(conStatus.value);

//   $.ajax({
//     url: "companyMain",
//     data: { conStatus: conStatus.value },
//     type: "POST",
//     dataType: "json",

//     success: function (mainContestList) {
//       if (mainContestList.length > 0) {
//         displayContestList(mainContestList);
//       } else {
//         displayNoContestMessage();
//       }
//     },
//     error: function (xhr, status, error) {
//       console.log("AJAX Error: " + error);
//     },
//   });

//   // 공모전 목록을 결과 창에 표시하는 함수
//   function displayContestList(mainContestList) {
//     var html = ""; // 빈 문자열로 초기화

//     mainContestList.forEach((contest) => {
//       html += `<div>
//               <div class="contest-slider-card">
//                 <div class="contest-slider-card-img">
//                   <img src="../assets/images/contest-gallery-card-img.svg" alt="" />
//                 </div>
//                 <div class="contest-slider-card-info">
//                   <div class="contest-slider-card-info-title">
//                     <p>${contest.contestTitle}</p>
//                   </div>

//                   <div class="contest-slider-card-info-detail">
//                     <p>상금</p>
//                     <p>${contest.price} 만원</p>
//                   </div>

//                   <div class="contest-slider-card-info-detail">
//                   <p>남은기간</p>
//                   <p>${contest.dueDate} 일</p>
//                 </div>
//                   <div class="contest-slider-card-info-button">
//                     <button class="btn-outlined btn-32">참여하러가기</button>
//                   </div>
//                 </div>
//               </div>
//             </div>`;
//     });

//     result.innerHTML = html;
//   }

//   // 일치하는 콘테스트가 없을 때 메시지를 표시하는 함수
//   function displayNoContestMessage() {
//     result.innerHTML = "일치하는 콘테스트가 없습니다";
//   }
// });

// //모집중 공모전 조회Ajax
// btnRecruiting.addEventListener("click", function () {
//   conStatus.value = "모집중";
//   console.log("모집중 Clicked"); // 로그 메시지 추가
//   console.log(conStatus.value);

//   $.ajax({
//     url: "companyManagement",
//     data: { conStatus: conStatus.value },
//     type: "POST",
//     dataType: "json",
//     success: function (mainContestList) {
//       if (mainContestList.length > 0) {
//         displayContestList(mainContestList);
//       } else {
//         displayNoContestMessage();
//       }
//     },
//     error: function (xhr, status, error) {
//       console.log("AJAX Error: " + error);
//     },
//   });

//   // 공모전 목록을 결과 창에 표시하는 함수
//   function displayContestList(mainContestList) {
//     var html = ""; // 빈 문자열로 초기화

//     mainContestList.forEach((contest) => {
//       html += `<div>
//                 <div class="contest-slider-card">
//                   <div class="contest-slider-card-img">
//                     <img src="../assets/images/contest-gallery-card-img.svg" alt="" />
//                   </div>
//                   <div class="contest-slider-card-info">
//                     <div class="contest-slider-card-info-title">
//                       <p>${contest.contestTitle}</p>
//                     </div>

//                     <div class="contest-slider-card-info-detail">
//                       <p>상금</p>
//                       <p>${contest.price} 만원</p>
//                     </div>

//                     <div class="contest-slider-card-info-detail">
//                     <p>남은기간</p>
//                     <p>${contest.dueDate} 일</p>
//                   </div>
//                     <div class="contest-slider-card-info-button">
//                       <button class="btn-outlined btn-32">참여하러가기</button>
//                     </div>
//                   </div>
//                 </div>
//               </div>`;
//     });

//     result.innerHTML = html;
//   }

//   // 일치하는 콘테스트가 없을 때 메시지를 표시하는 함수
//   function displayNoContestMessage() {
//     result.innerHTML = "일치하는 콘테스트가 없습니다";
//   }
// });

// //심사중 공모전 조회Ajax
// btnCasting.addEventListener("click", function () {
//   conStatus.value = "심사중";
//   console.log("심사중 Clicked"); // 로그 메시지 추가
//   console.log(conStatus.value);

//   $.ajax({
//     url: "companyManagement",
//     data: { conStatus: conStatus.value },
//     type: "POST",
//     dataType: "json",
//     success: function (mainContestList) {
//       if (mainContestList.length > 0) {
//         displayContestList(mainContestList);
//       } else {
//         displayNoContestMessage();
//       }
//     },
//     error: function (xhr, status, error) {
//       console.log("AJAX Error: " + error);
//     },
//   });

//   // 공모전 목록을 결과 창에 표시하는 함수
//   function displayContestList(mainContestList) {
//     var html = ""; // 빈 문자열로 초기화

//     mainContestList.forEach((contest) => {
//       html += `<div>
//                 <div class="contest-slider-card">
//                   <div class="contest-slider-card-img">
//                     <img src="../assets/images/contest-gallery-card-img.svg" alt="" />
//                   </div>
//                   <div class="contest-slider-card-info">
//                     <div class="contest-slider-card-info-title">
//                       <p>${contest.contestTitle}</p>
//                     </div>

//                     <div class="contest-slider-card-info-detail">
//                       <p>상금</p>
//                       <p>${contest.price} 만원</p>
//                     </div>

//                     <div class="contest-slider-card-info-detail">
//                     <p>남은기간</p>
//                     <p>${contest.dueDate} 일</p>
//                   </div>
//                     <div class="contest-slider-card-info-button">
//                       <button class="btn-outlined btn-32">참여하러가기</button>
//                     </div>
//                   </div>
//                 </div>
//               </div>`;
//     });

//     result.innerHTML = html;
//   }

//   // 일치하는 콘테스트가 없을 때 메시지를 표시하는 함수
//   function displayNoContestMessage() {
//     result.innerHTML = "일치하는 콘테스트가 없습니다";
//   }
// });

// //완료된 공모전 조회Ajax
// btnEnd.addEventListener("click", function () {
//   conStatus.value = "완료";
//   console.log("완료 Clicked"); // 로그 메시지 추가
//   console.log(conStatus.value);

//   $.ajax({
//     url: "companyManagement",
//     data: { conStatus: conStatus.value },
//     type: "POST",
//     dataType: "json",
//     success: function (mainContestList) {
//       if (mainContestList.length > 0) {
//         displayContestList(mainContestList);
//       } else {
//         displayNoContestMessage();
//       }
//     },
//     error: function (xhr, status, error) {
//       console.log("AJAX Error: " + error);
//     },
//   });

//   // 공모전 목록을 결과 창에 표시하는 함수
//   function displayContestList(mainContestList) {
//     var html = ""; // 빈 문자열로 초기화

//     mainContestList.forEach((contest) => {
//       html += `<div>
//                 <div class="contest-slider-card">
//                   <div class="contest-slider-card-img">
//                     <img src="../assets/images/contest-gallery-card-img.svg" alt="" />
//                   </div>
//                   <div class="contest-slider-card-info">
//                     <div class="contest-slider-card-info-title">
//                       <p>${contest.contestTitle}</p>
//                     </div>

//                     <div class="contest-slider-card-info-detail">
//                       <p>상금</p>
//                       <p>${contest.price} 만원</p>
//                     </div>

//                     <div class="contest-slider-card-info-detail">
//                     <p>남은기간</p>
//                     <p>${contest.dueDate} 일</p>
//                   </div>
//                     <div class="contest-slider-card-info-button">
//                       <button class="btn-outlined btn-32">참여하러가기</button>
//                     </div>
//                   </div>
//                 </div>
//               </div>`;
//     });

//     result.innerHTML = html;
//   }

//   // 일치하는 콘테스트가 없을 때 메시지를 표시하는 함수
//   function displayNoContestMessage() {
//     result.innerHTML = "일치하는 콘테스트가 없습니다";
//   }
// });
