class Customer < ActiveRecord::Base
  attr_accessible :age, :fname, :lname, :dob
  has_many :orders
  
  class << self
    def age(dob)
      now = Time.now.to_date
      now.year - dob.year - ((now.month > dob.month || (now.month == dob.month && now.day >= dob.day)) ? 0 : 1  )
    end
  end
end
