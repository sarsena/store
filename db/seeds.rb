# encoding: utf-8
# Autogenerated by the db:seed:dump task
# Do not hesitate to tweak this to your needs

Customer.create([
  { :fname => "Steven", :lname => "Arsena", :age => 24, :dob => "1988-12-19", :created_at => "2013-07-30 21:06:57" },
  { :fname => "Aaron", :lname => "Kirby", :age => 23, :dob => "1989-08-01", :created_at => "2013-07-30 21:06:57" },
  { :fname => "Patrick", :lname => "Nolan", :age => 24, :dob => "1989-03-26", :created_at => "2013-07-30 21:06:57" }
], :without_protection => true )



Order.create([
  { :id => 123, :customer_id => 1, :order_placed => "2013-07-31 15:22:49", :order_total => 50.0 },
  { :id => 124, :customer_id => 3, :order_placed => "2013-07-31 15:22:49", :order_total => 66.0 },
  { :id => 125, :customer_id => 2, :order_placed => "2013-07-31 15:22:49", :order_total => 2.5 },
  { :id => 126, :customer_id => 1, :order_placed => "2013-07-31 15:22:49", :order_total => 30.5 }
], :without_protection => true )



OrderProduct.create([
  { :order_id => 123, :product_id => 1, :quantity => 1 },
  { :order_id => 123, :product_id => 2, :quantity => 1 },
  { :order_id => 124, :product_id => 1, :quantity => 1 },
  { :order_id => 124, :product_id => 4, :quantity => 1 },
  { :order_id => 124, :product_id => 3, :quantity => 1 },
  { :order_id => 125, :product_id => 5, :quantity => 1 },
  { :order_id => 126, :product_id => 3, :quantity => 1 },
  { :order_id => 126, :product_id => 2, :quantity => 1 }
], :without_protection => true )



Product.create([
  { :id => 1, :product_description => "Cocaine", :product_price => 30.0 },
  { :id => 2, :product_description => "Meth", :product_price => 20.0 },
  { :id => 3, :product_description => "Marijuana", :product_price => 10.5 },
  { :id => 4, :product_description => "Heroin", :product_price => 25.5 },
  { :id => 5, :product_description => "Salvia", :product_price => 2.5 }
], :without_protection => true )


