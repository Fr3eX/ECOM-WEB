var validation = 0;
$(".btn1").on("click", function () {
  var notValid = document.createElement("div");
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


