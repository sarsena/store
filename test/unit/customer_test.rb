require 'test_helper'

class CustomerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "age" do
    age =  Customer.age("12-19-1988")
    assert age = 24
  end
end
