// 공모전 카드 생성 ajax
function attendConAjax(parameter) {
  $.ajax({
    url: "conProgress",
    type: "POST",
    data: { attendConStatus: attendConStatus },
    success: function (conProgress) {
      console.log(conProgress);
    },
  });
}
