// The folowing script is to keep shopping cart visible when we click on it

$("#cart-menu").on("click", function (event) {
  event.stopPropagation();
  $(this).parent().addClass("show");
});

// Cart itmes edit
// updating the cart counter
const updateCart = () => {
  $("#cart-counter").html($("#list-times li").length);
  $(".numberItems span").html($("#list-times li").length);

  if ($("#list-times").has("li.cart-product").length == 0) {
    // $("#list-times").html("Your cart is empty");
    $("#list-times").html("<li id='empty-cart'>Your cart is empty</li>");
    $(".continue-shopping").removeClass("d-none");
    $(".checkout").addClass("d-none");
  } else if ($("#list-times").has("li.cart-product").length != 0) {
    $("#empty-cart").remove();
    $(".continue-shopping").addClass("d-none");
    $(".checkout").removeClass("d-none");
  }
};
updateCart();

// Update total price
const updateTotal = () => {
  var totalStr = $(".cart-footer .total .price").text();
  var total = parseFloat(totalStr);
  // Loop on all li items in the cart
  var somme = 0;
  $(".cart-product").each(function () {
    var quantity = parseInt($(this).find(".quantity").text());
    var price = parseFloat($(this).find(".price").text());
    console.log(price);
    somme += quantity * price;
  });
  if ($("#list-times").has("li").length == 0) {
    $(".cart-footer .total .price").html(0.0);
  } else {
    $(".cart-footer .total .price").html(somme);
  }
};
updateTotal();
// Remouve item from cart & Update quantity value

const removeItemCart = () => {
  console.log("close button clicked");
  var classList = $("#list-times li .btn-close").parentsUntil(
    "#list-times .cart-product"
  );
  var classAtr = $(classList[3]).attr("class");
  var selectedId = classAtr.split(/\s+/)[1];
  console.log(selectedId);
  $("#list-times li").each(function () {
    console.log(
      $("#list-times li .btn-close")
        .parents()
        .find("." + selectedId)
        .parent()
    );
    $("#list-times li .btn-close")
      .parents()
      .find("." + selectedId)
      .parent()
      .remove();
  });
  updateCart();
  updateTotal();
};

const addQuantity = () => {
  var classList = $(".quantitybtn .add").parentsUntil(
    "#list-times .cart-product"
  );
  var classAtr = $(classList[4]).attr("class");
  var selectedId = classAtr.split(/\s+/)[1];
  console.log("selected id : " + selectedId);
  var quantity = $("#list-times .product." + selectedId + " .quantity").text();
  var quantityInt = parseInt(quantity);

  quantityInt += 1;
  $("#list-times .product." + selectedId + " .quantity").html(quantityInt);
  updateCart();
  updateTotal();
};

const removeQuantity = () => {
  var classList = $(".quantitybtn .add").parentsUntil(
    "#list-times .cart-product"
  );
  var classAtr = $(classList[4]).attr("class");
  var selectedId = classAtr.split(/\s+/)[1];
  console.log("selected id : " + selectedId);
  var quantity = $("#list-times .product." + selectedId + " .quantity").text();
  var quantityInt = parseInt(quantity);

  quantityInt -= 1;
  $("#list-times .product." + selectedId + " .quantity").html(quantityInt);
  if (quantityInt <= 0) {
    $("#list-times .product." + selectedId + " .quantity").html(1);
  }
  updateCart();
  updateTotal();
};

// product change color
$("#red").on("click", function () {
  $("#red-cofee").removeClass("d-none");
  $("#white-cofee").addClass("d-none");
  $("#red").addClass("selectedColor");
  $("#white").removeClass("selectedColor");
});
$("#white").on("click", function () {
  $("#red-cofee").addClass("d-none");
  $("#white-cofee").removeClass("d-none");
  $("#white").addClass("selectedColor");
  $("#red").removeClass("selectedColor");
});

// Add item to cart

$(".add-to-cart").click(function (event) {
  event.preventDefault();
  // get the id of selected item
  var parentsList = $(this).parents();
  var idProduct = $(parentsList[2]).children(".card-body").attr("id");
  console.log("Selected product id : " + idProduct);

  // Get all information of product
  var title = $(parentsList[2]).find(".title").text();
  var imageSrc = $(parentsList[2]).find("img").attr("src");
  var price = $(parentsList[2]).find(".productPrice span").text();

  console.log("title : " + title + "\nimage : " + imageSrc + "\nprice" + price);

  // check if an item alredy exist in the cart
  var flag = false; // flag = false => item not exist in the cart
  if ($("#list-times").has("li.cart-product").length != 0) {
    $("#list-times li").each(function () {
      var id = $(this).find(".row").parent().attr("class").split(/\s+/)[1];
      console.log(id);
      if (id === idProduct) {
        console.log("item already exist in the cart");
        var quantity = parseInt(
          $("#list-times .product." + id + " .quantity").text()
        );
        quantity += 1;
        $("#list-times .product." + id + " .quantity").html(quantity);
        flag = true;
        return false;
      } else {
        flag = false;
      }
    });
  }
  if (flag === false) {
    var cartItems = document.getElementById("list-times");
    cartItems.innerHTML +=
      '<li class="cart-product">' +
      '<div class="product ' +
      idProduct +
      '">' +
      '<div class="row">' +
      '<div class="col">' +
      '<div class="product-title">' +
      title +
      "</div>" +
      '<div class="product-price">' +
      '<div class="changeQuntite">' +
      '<span class="quantity m-1">' +
      1 +
      "</span>" +
      'x<span class="price m-2">' +
      price +
      "</span>" +
      "</div>" +
      '<div class="quantitybtn my-2">' +
      '<div class="add btn btn-outline-primary mx-2" onClick="addQuantity()" >+</div>' +
      '<div class="remove btn btn-outline-secondary mx-2" onClick="removeQuantity()" >-</div>' +
      "</div>" +
      "</div>" +
      "</div>" +
      '<div class="col">' +
      '<div class="product-image">' +
      '<img src="' +
      imageSrc +
      '" width="80%" alt="" />' +
      '<button type="button" class="btn-close btn-outline-secondary" onClick="removeItemCart()" ></button>' +
      "</div>" +
      "</div>" +
      "</div>" +
      "</div>" +
      "</li>";
  }
  updateCart();
  updateTotal();
});

$("#button-addQuantity").click(function (event) {
  event.preventDefault();
  var quantite = parseInt($(this).parent().find("input").val());
  quantite += 1;
  $(this).parent().find("input").attr("value", quantite);
});

$("#button-removeQuantity").click(function (event) {
  event.preventDefault();
  var quantite = parseInt($(this).parent().find("input").val());
  quantite -= 1;
  $(this).parent().find("input").attr("value", quantite);
  if (quantite <= 1) {
    $(this).parent().find("input").attr("value", 1);
  }
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

  var title = $("#" + idProduct)
    .find(".title")
    .text();
  var category = $("#" + idProduct).attr("category");
  var imageSrc = $("#" + idProduct)
    .find("img")
    .attr("src");
  var price = parseFloat(
    $("#" + idProduct)
      .find(".productPrice span")
      .text()
  );

  // Put the info in the detail modal

  $(".modal .modal-body .large-image img").attr("src", imageSrc);
  $(".modal .modal-body .title-cat .title").text(title);
  $(".modal .modal-body .title-cat p").text(category);

  // Description is not yet ready

  $(".modal .modal-body .product-info .price strong").text(price);

  // model not yet ready

  // color code should be in the database
});

$(".addToCart").click(function (event, idProduct = selectedIdForDetail) {
  event.preventDefault();
  // get the items for the selected ID

  // Get all information of product
  var title = $("#" + idProduct)
    .find(".title")
    .text();
  var imageSrc = $("#" + idProduct)
    .find("img")
    .attr("src");
  var price = $("#" + idProduct)
    .find(".productPrice span")
    .text();

  console.log("title : " + title + "\nimage : " + imageSrc + "\nprice" + price);

  // check if an item alredy exist in the cart
  var flag = false; // flag = false => item not exist in the cart
  if ($("#list-times").has("li.cart-product").length != 0) {
    $("#list-times li").each(function () {
      var id = $(this).find(".row").parent().attr("class").split(/\s+/)[1];
      console.log(id);
      if (id === idProduct) {
        console.log("item already exist in the cart");
        var quantity = parseInt(
          $("#list-times .product." + id + " .quantity").text()
        );
        quantity += 1;
        $("#list-times .product." + id + " .quantity").html(quantity);
        flag = true;
        return false;
      } else {
        flag = false;
      }
    });
  }
  if (flag === false) {
    var cartItems = document.getElementById("list-times");
    var quantity = $(this).parents().find(".quantity-input").val();
    cartItems.innerHTML +=
      '<li class="cart-product">' +
      '<div class="product ' +
      idProduct +
      '">' +
      '<div class="row">' +
      '<div class="col">' +
      '<div class="product-title">' +
      title +
      "</div>" +
      '<div class="product-price">' +
      '<div class="changeQuntite">' +
      '<span class="quantity m-1">' +
      quantity +
      "</span>" +
      'x<span class="price m-2">' +
      price +
      "</span>" +
      "</div>" +
      '<div class="quantitybtn my-2">' +
      '<div class="add btn btn-outline-primary mx-2" onClick="addQuantity()" >+</div>' +
      '<div class="remove btn btn-outline-secondary mx-2" onClick="removeQuantity()" >-</div>' +
      "</div>" +
      "</div>" +
      "</div>" +
      '<div class="col">' +
      '<div class="product-image">' +
      '<img src="' +
      imageSrc +
      '" width="80%" alt="" />' +
      '<button type="button" class="btn-close btn-outline-secondary" onClick="removeItemCart()" ></button>' +
      "</div>" +
      "</div>" +
      "</div>" +
      "</div>" +
      "</li>";
  }
  updateCart();
  updateTotal();
});



$(".form-check .form-check-label .color").on("click", function () {
  //   console.log('id: ' + $(this).parentsUntil('.form-check')[0].attr('for'))
  var id = $(this).parent().attr("for");
  console.log(id);
  // changeBorder(id);
  var checkBox = document.getElementById(id);

  if (!checkBox.checked) {
    console.log("checked");
    $("#" + id)
      .parent()
      .find(".color")
      .css("border", ".1px solid #0D6EFD");
  } else if (checkBox.checked) {
    console.log("not checked");
    $("#" + id)
      .parent()
      .find(".color")
      .css("border", ".1px solid black");
  }
});

// ---------------------------------------

// Code added for sall page
// delete item
$(".delete").on("click", function () {
  var selectedCard = $(this).parent().parent().parent();
  $(".delete-confirmed").on("click", function () {
    console.log("delete confirmed <clicked>");
    $(selectedCard).remove();
    console.log("item deleted");
  });
});

// update photo

const readURL = (input) =>{
    if (input.files && input.files[0]) {
        var reader = new FileReader();
        reader.onload = function (e) {
            $('#editProductModal .img-thumbnail').attr('src', e.target.result);
        }

        reader.readAsDataURL(input.files[0]);
    }
}

$("#editProductImage").on('change', function(){
    readURL(this);
});

// save change button
$('#saveChanges').on('click',function(){
  $('#saveProductChanges').click();
});

$('#saveProductChanges').on('click',function(){
  console.log('product info changed succesfuly');
})

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
  console.log('cat: ' + category);
  var imageSrc = $("#" + idProduct).find("img").attr("src");
  var price = parseFloat($("#" + idProduct).find(".productPrice span").text());

  // Put the info in the detail modal

  $(".product-img .img-thumbnail").attr("src", imageSrc);
  $(".product-content #product-title").val(title);
  
  // $(".product-content #edit-Category option[value='"+category+"']").attr('value',category + ' selected');

  // Description is not yet ready

  $(".product-content #product-Price").val(price);

  // model not yet ready

  // color code should be in the database
});