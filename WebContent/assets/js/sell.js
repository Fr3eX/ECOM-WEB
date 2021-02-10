var TitleV = 0;
var ImagV = 0;
var DescV = 0;
var CatV = 0;
var QantV = 0;
var PriceV = 0;
var ModelV = 0;

var ImagVT = document.createElement("div");
var DescVT = document.createElement("div");
var CatVT = document.createElement("div");
var QantVT = document.createElement("div");
var PriceVT = document.createElement("div");
var ModelVT = document.createElement("div");


$(".addNewProduct").on("click", function () {
  
  notValid.innerHTML = "Password not valide";
  notValid.setAttribute("class", "passNotValide");
  console.log($(".password").val().length);
  if ($(".password").val().length < 6 && validation === 0) {
    validation = 1;
  
    $(".password").parent().append(notValid);
  } else if ($(".password").val().length >= 6) {
    validation = 0;
    $(".passNotValide").remove();
  }
  console.log(validation);

  if(validation === 0){
      $('.signin').click();
  }
});
