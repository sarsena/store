class OrderProduct < ActiveRecord::Base
  attr_accessible :order_id, :product_id, :quantity
  scope :order_products,  lambda{ |id| where(order_id: id) }
  def self.product(id)
    OrderProduct.order_products(id)
  end
  
  def self.add_new(products, order)
    products.each do |product|
      product_id = Product.find_by_product_description(product[1][:name]).id
      OrderProduct.new(:order_id => order.id, :product_id => product_id, :quantity => product[1][:quantity]).save
    end
  end
end
