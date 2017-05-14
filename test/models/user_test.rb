require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(izena: "Example User", erab_izena: "user@example.com")
  end

  test "should be valid" do
    assert @user.valid?
  end

  test "Izenaren kaxa betzetzea ezinbestekoa da" do
    @user.izena = "     "
    assert_not @user.valid?
  end

  test "Erabiltzaile izenaren kaxa betetzea ezinbestekoa da" do
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

  test "email addresses should be unique" do
    duplicate_user = @user.dup
    duplicate_user.erab_izena = @user.erab_izena.upcase
    @user.save
    assert_not duplicate_user.valid?
  end

  test "email addresses should be saved as lower-case" do
    mixed_case_email = "Foo@ExAMPle.CoM"
    @user.erab_izena = mixed_case_email
    @user.save
    assert_equal mixed_case_email.downcase, @user.reload.erab_izena
  end
end
