# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
  $(".add-product").click ->
    product = $("#products_product_description")[0].value
    $(".products").append $("<tr><td>" + product + "</td><td>" + 1 + "</td></tr>")