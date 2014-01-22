# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
  $(".add-product").click ->
    product = $("#products_product_description").find(":selected")[0]
    
    quantity = $("#quantity_")[0].value
    console.log()
    $(".products").append $("<tr><td>" + product.text + "</td><td>" + quantity + "</td><td> $" + product.value * quantity + "</td></tr>")
    $('#new_order')[0].reset();