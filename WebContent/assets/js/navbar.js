// The folowing script is to keep shopping cart visible when we click on it
$("#cart-menu").on("click", function (event) {
    event.stopPropagation();
    $(this).parent().addClass("show");
});

