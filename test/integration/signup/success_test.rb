require 'test_helper'

class SignupSuccessTest < ActionDispatch::IntegrationTest
  test "creates account" do
    visit "/"
    click_link t("menu.signup")
    fill_in label("user.name"), with: "John Doe"
    fill_in label("user.email"), with: "john@example.org"
    fill_in label("user.password"), with: "test"
    fill_in label("user.password_confirmation"), with: "test"
    click_button t("menu.signup")

    assert_equal(current_path, "/login")
    assert page.has_content? t("flash.signup.create.notice")
  end
end
