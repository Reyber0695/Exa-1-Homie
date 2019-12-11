const btnVisa = () => {
  $('.btn-visa').css("display", "flex");
  $('.master-code').css("display", "none");
  $('.btn-amex').css("display", "none");
}

const btnMaster = () => {
  $('.master-code').css("display", "flex");
  $('.btn-amex').css("display", "none");
  $('.btn-visa').css("display", "none");
}

const btnAmex = () => {
  $('.btn-amex').css("display", "flex");
  $('.master-code').css("display", "none");
  $('.btn-visa').css("display", "none");
}