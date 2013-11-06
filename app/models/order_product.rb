class OrderProduct < ActiveRecord::Base
  # attr_accessible :title, :body
  scope :order_products,  lambda{ |id| where(order_id: id) }
  def self.product(id)
    OrderProduct.order_products(id)
  end
end
