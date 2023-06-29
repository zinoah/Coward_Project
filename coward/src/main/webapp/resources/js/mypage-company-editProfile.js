function setRegionSelected() {
  var loginMemberRegionNo = document.getElementById(
    "loginMemberRegionNo"
  ).value;
  var regionSelect = document.getElementById("regionSelect");

  for (var i = 0; i < regionSelect.options.length; i++) {
    if (regionSelect.options[i].value === loginMemberRegionNo) {
      regionSelect.options[i].selected = true;
      break;
    }
  }
}

window.onload = setRegionSelected;
