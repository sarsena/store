require 'test_helper'

class CustomerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def test_age do
    assert_equal(24, Customer.age("12-19-1988"))
  end
end