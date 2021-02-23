// import { isEmail } from './signup.js'

// console.log(isEmail);
var NameV = 0;
var EmailV = 0;
var MesgV = 0;

function isEmail(email) {
    var regex = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
    return regex.test(email);
}


$(".sendButton").on("click", function () {
  if ($("#contactname").val().length === 0) {
    $("#contactname").addClass("is-invalid");
    NameV = 1;
  } else {
    $("#contactname").removeClass("is-invalid");
    NameV = 0;
  }

  if ($("#contactemail").val().length === 0 || !isEmail($("#contactemail").val())) {
    $("#contactemail").addClass("is-invalid");
    EmailV = 1;
  } else {
    $("#contactemail").removeClass("is-invalid");
    EmailV = 0;
  }

  if ($("#contactmessage").val().length === 0) {
    $("#contactmessage").addClass("is-invalid");
    MesgV = 1;
  } else {
    $("#contactmessage").removeClass("is-invalid");
    MesgV = 0;
  }


  window.setTimeout(function () {
    if (
        NameV === EmailV &&
        EmailV === MesgV &&
        MesgV === 0 
    ) {
      $(".send").click();
    }
  }, 208);
});