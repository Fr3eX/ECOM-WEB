var FNVal = 0;
var LNVal = 0;
var PVal = 0;
var CPVal = 0;
var EVal = 0;

var FNValT = document.createElement("div");
var LNValT = document.createElement("div");
var PValT = document.createElement("div");
var CPValT = document.createElement("div");
var EValT = document.createElement("div");

function isEmail(email) {
  var regex = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
  return regex.test(email);
}

// first name
$(".btn1").on("click", function () {
  if ($(".firstName").val().length === 0 && FNVal === 0) {
    FNValT.setAttribute("class", "FNNotValide");
    FNValT.innerHTML = "Name not Valide";
    $(".inputwithicon0").append(FNValT);
    FNVal = 1;
  } else if ($(".firstName").val().length != 0) {
    $(".FNNotValide").remove();
    FNVal = 0;
  }

  if ($(".lastName").val().length === 0 && LNVal === 0) {
    LNValT.setAttribute("class", "LNNotValide");
    LNValT.innerHTML = "Name not Valide";
    $(".inputwithicon1").append(LNValT);
    LNVal = 1;
  } else if ($(".lastName").val().length != 0) {
    $(".LNNotValide").remove();
    LNVal = 0;
  }

  if (
    $(".email").val().length === 0 &&
    FNVal === 0 &&
    !isEmail($(".email").val())
  ) {
    EValT.setAttribute("class", "emailNotValide");
    EValT.innerHTML = "Email not valide";
    $(".inputwithicon2").append(EValT);
    EVal = 1;
  } else if ($(".email").val().length != 0 && isEmail($(".email").val())) {
    $(".emailNotValide").remove();
    EVal = 0;
  }

  if ($(".password").val().length < 6 && PVal === 0) {
    PValT.setAttribute("class", "passNotValide");
    PValT.innerHTML = "Password not Valide";
    $(".inputwithicon3").append(PValT);
    PVal = 1;
  } else if ($(".password").val().length >= 6) {
    $(".passNotValide").remove();
    PVal = 0;
  }

  if (
    $(".confPass").val().length < 6 &&
    CPVal === 0 &&
    $(".password").val() != $(".confPass").val()
  ) {
    CPValT.setAttribute("class", "confPassNotValid");
    CPValT.innerHTML = "Password not valide or does not match";
    $(".inputwithicon4").append(CPValT);
    CPVal = 1;
  } else if (
    $(".confPass").val().length >= 6 &&
    $(".password").val() === $(".confPass").val()
  ) {
    $(".confPassNotValid").remove();
    CPVal = 0;
  }

  window.setTimeout(function () {
    if (
      FNVal === LNVal &&
      LNVal === PVal &&
      PVal === CPVal &&
      CPVal === 0 &&
      EVal === 0
    ) {
      $(".signUp").click();
    }
  }, 208);

});
