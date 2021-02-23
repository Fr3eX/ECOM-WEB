var TitleV = 0;
// var ImagV = 0;
var DescV = 0;
var CatV = 0;
var QantV = 0;
var PriceV = 0;
var ModelV = 0;

$(".addNewProduct").on("click", function () {
  if ($("#add-product-title").val().length === 0) {
    $("#add-product-title").addClass("is-invalid");
    TitleV = 1;
  } else {
    $("#add-product-title").removeClass("is-invalid");
    TitleV = 0;
  }

  if ($("#add-product-description").val().length === 0) {
    $("#add-product-description").addClass("is-invalid");
    DescV = 1;
  } else {
    $("#add-product-description").removeClass("is-invalid");
    DescV = 0;
  }

  if ($("#set-product-Category").val().length === 0) {
    $("#set-product-Category").addClass("is-invalid");
    CatV = 1;
  } else {
    $("#set-product-Category").removeClass("is-invalid");
    CatV = 0;
  }
  if ($("#add-product-Quantity").val().length === 0) {
    $("#add-product-Quantity").addClass("is-invalid");
    QantV = 1;
  } else {
    $("#add-product-Quantity").removeClass("is-invalid");
    QantV = 0;
  }

  if ($("#add-product-Price").val().length === 0) {
    $("#add-product-Price").addClass("is-invalid");
    PriceV = 1;
  } else {
    $("#add-product-Price").removeClass("is-invalid");
    PriceV = 0;
  }

  if ($("#add-product-Model").val().length === 0) {
    $("#add-product-Model").addClass("is-invalid");
    ModelV = 1;
  } else {
    $("#add-product-Model").removeClass("is-invalid");
    ModelV = 0;
  }

  window.setTimeout(function () {
    if (
      TitleV === DescV &&
      DescV === CatV &&
      CatV === QantV &&
      QantV === PriceV &&
      PriceV === ModelV &&
      ModelV === 0
    ) {
      $(".addNewProductS").click();
      console.log("button clicked");
    }
  }, 208);
});

$("#saveChanges").on("click", function () {
  if ($("#product-title").val().length === 0) {
    $("#product-title").addClass("is-invalid");
    TitleV = 1;
  } else {
    $("#product-title").removeClass("is-invalid");
    TitleV = 0;
  }

  if ($("#product-description").val().length === 0) {
    $("#product-description").addClass("is-invalid");
    DescV = 1;
  } else {
    $("#product-description").removeClass("is-invalid");
    DescV = 0;
  }

  if ($("#edit-Category").val().length === 0) {
    $("#edit-Category").addClass("is-invalid");
    CatV = 1;
  } else {
    $("#edit-Category").removeClass("is-invalid");
    CatV = 0;
  }
  if ($("#product-Quantity").val().length === 0) {
    $("#product-Quantity").addClass("is-invalid");
    QantV = 1;
  } else {
    $("#product-Quantity").removeClass("is-invalid");
    QantV = 0;
  }

  if ($("#product-Price").val().length === 0) {
    $("#product-Price").addClass("is-invalid");
    PriceV = 1;
  } else {
    $("#product-Price").removeClass("is-invalid");
    PriceV = 0;
  }

  if ($("#product-Model").val().length === 0) {
    $("#product-Model").addClass("is-invalid");
    ModelV = 1;
  } else {
    $("#product-Model").removeClass("is-invalid");
    ModelV = 0;
  }

  window.setTimeout(function () {
    if (
      TitleV === DescV &&
      DescV === CatV &&
      CatV === QantV &&
      QantV === PriceV &&
      PriceV === ModelV &&
      ModelV === 0
    ) {
      $("#saveProductChanges").click();
      console.log("button clicked");
    }
  }, 208);
});

// Product

// update photo

const readURLProduct = (input) => {
  if (input.files && input.files[0]) {
    var reader = new FileReader();
    reader.onload = function (e) {
      $("#editProductModal .img-thumbnail").attr("src", e.target.result);
    };

    reader.readAsDataURL(input.files[0]);
  }
};

$("#editProductImage").on("change", function () {
  readURLProduct(this);
});

// save change button
// $('#saveChanges').on('click',function(){
//   $('#saveProductChanges').click();
// });

$("#saveProductChanges").on("click", function () {
  console.log("product info changed succesfuly");
});

// Get the info from product to edit modal

$(".editProduct").click(function (event) {
  event.preventDefault();
  // get the id of selected item
  var parentsList = $(this).parents();
  var idProduct = $(parentsList[2]).children(".card-body").attr("id");
  console.log("Selected product id : " + idProduct);
  selectedIdForDetail = idProduct;

  var title = $("#" + idProduct).find(".title").text();
  var category = $("#" + idProduct).attr("category");
  category = category.toLowerCase();
  var imageSrc = $("#" + idProduct).find("img").attr("src");
  var price = parseFloat($("#" + idProduct).find(".productPrice span").text());
  var quantite = parseInt($("#" + idProduct).find(".productQuantity p").text());
  var description = $("#" + idProduct).find(".productDescription p").text();

  // Put the info in the detail modal

  $(".product-img .img-thumbnail").attr("src", imageSrc);
  $(".product-content #product-title").val(title);

  // $(".product-content #edit-Category option[value='"+category+"']").attr('value',category + ' selected');
  $(".product-content #product-description").val(description);

  $(".product-content #product-Price").val(price);
  $(".product-content #product-Quantity").val(quantite);
  // model not yet ready

  // color code should be in the database
});

// Detail modal

var selectedIdForDetail = 0;

$(".detail").click(function (event) {
  event.preventDefault();
  // get the id of selected item
  var parentsList = $(this).parents();
  var idProduct = $(parentsList[2]).children(".card-body").attr("id");
  console.log("Selected product id : " + idProduct);
  selectedIdForDetail = idProduct;

  var title = $("#" + idProduct).find(".title").text();
  var category = $("#" + idProduct).attr("category");
  var imageSrc = $("#" + idProduct).find("img").attr("src");
  var price = parseFloat($("#" + idProduct).find(".productPrice span").text());
  var description = $("#" + idProduct).find(".productDescription p").text();
  var quantite = parseInt($("#" + idProduct).find(".productQuantity p").text());
  
  // Put the info in the detail modal

  $(".modal .modal-body .large-image img").attr("src", imageSrc);
  $(".modal .modal-body .title-cat .title").text(title);
  $(".modal .modal-body .title-cat p").text(category);
  $(".modal .modal-body .description p").text(description);

  $(".modal .modal-body .product-info .price strong").text(price);
  $(".modal .modal-body .quantity-selector .quantity #quantityRest").val(quantite);

  // model not yet ready

  // color code should be in the database
});

const uploadProductImage = (input) => {
  if (input.files && input.files[0]) {
    var reader = new FileReader();
    reader.onload = function (e) {
      $("#addProductModal .img-thumbnail").attr("src", e.target.result);
    };

    reader.readAsDataURL(input.files[0]);
  }
};

$("#addProductImage").on("change", function () {
  uploadProductImage(this);
});

 $('.addNewProduct').click(function(){
   $('#addNewProduct').click()
 })
 
 $('.delete').on('click',function(){
 var id = $(this).attr('id').substring(8);
  $('#productId').val(id);
 });
 $('.editProduct').on('click',function(){
 var id = $(this).attr('id').substring(8);
  $('#productIdUpdate').val(id);
 }); 
 
