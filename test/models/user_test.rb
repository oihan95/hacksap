require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(izena: "Example User", erab_izena: "user@example.com")
  end

  test "should be valid" do
    assert @user.valid?
  end

  test "name should be present" do
    @user.izena = "     "
    assert_not @user.valid?
  end

  test "erab_izena should be present" do
    @user.erab_izena = "     "
    assert_not @user.valid?
  end

  test "name should not be too long" do
    @user.izena = "a" * 51
    assert_not @user.valid?
  end

  test "email should not be too long" do
    @user.erab_izena = "a" * 244 + "@example.com"
    assert_not @user.valid?
  end
end
