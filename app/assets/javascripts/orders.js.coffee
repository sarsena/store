# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
  $(".add-product").click ->
    product = $("#products_product_description").find(":selected")[0]
    quantity = $("#quantity_")[0].value
    $(".products").append $("<tr><td class='name'>" + product.text + "</td><td class='quantity'>" + quantity + "</td><td class='price'>" + product.value * quantity + "</td></tr>")
    $('#new_order')[0].reset();
    
  $(".save_button").click (event) ->
    event.preventDefault();
    $.ajax '/orders',
      type: 'POST',
      dataType: 'HTML',
      data: getJson(),
      success: (data) ->
         window.location = '/orders'
      error: (data) ->
        console.log('ERROR')

  getJson = () ->
    products = []
    total_price = 0
    $(".products tr").each ->
      product = {
        name: $(this).children('.name')[0].innerHTML
        quantity: $(this).children('.quantity')[0].innerHTML
        price: Number($(this).children('.price')[0].innerHTML)
      }
      total_price += product.price
      products.push(product)
    results = {
      products: products
      order_total: total_price 
    }
    return results