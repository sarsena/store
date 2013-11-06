class Product < ActiveRecord::Base
  # attr_accessible :title, :body
  
  def self.products(id)
    Product.where(id: id)
  end
end
