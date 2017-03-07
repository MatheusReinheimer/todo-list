require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "requires name" do
    user = User.create(name: nil)
    assert user.errors[:name].any?
  end

  test "requires email" do
    user = User.create(email: nil)
    assert user.errors[:email].any?
  end

  test "require valid email" do
    user = User.create(email: "invalid")
    assert user.errors[:email].any?
  end

  test "accepts valid email" do
    user = User.create(email: "john@exaple.com")
    assert user.errors[:email].empty?
  end

  test "require password" do
    user = User.create(password: nil)
    assert user.errors[:password].any?
  end

  test "require password with 4 characters or more" do
    user = User.create(password: "abc")
    assert user.errors[:password].any?
  end

  test  "accepts valid password" do
    user = User.create(password: "teste")
    assert user.errors[:password].empty?
  end

  test "require password confirmation" do
    user = User.create(password: "test", password_confirmation: "invalid")
    # binding.pry
    assert user.errors[:password_confirmation].any?
  end

  test "rejects dupicated email" do
    # binding.pry
    User.create!(name: "Matheus", email:"piano@piano", password:"test", password_confirmation:"test")
    @user = User.create(name: "Matheus", email:"piano@piano", password:"test", password_confirmation:"test")
    assert @user.errors[:email].any?
  end
end
