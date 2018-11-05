require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(firstname: "exemple", lastname: "exemple", email: "exemple@exemple.com", password: "unexemple", password_confirmation: "unexmple")
  end

  test "should be valid" do 
    assert_not @user.valid?
  end

  test "firstname should be valid u know" do
    @user.firstname = " "
    assert_not @user.valid?
  end

  test "lastname should be valid u know" do
    @user.lastname = " "
    assert_not @user.valid?
  end

  test "email should be valid u know" do
    @user.email = " "
    assert_not @user.valid?
  end


end
