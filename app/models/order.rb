class Order < ActiveRecord::Base
  attr_accessible :customer_id, :order_placed, :order_total
  belongs_to :customer
  has_many :order_products
  

end
