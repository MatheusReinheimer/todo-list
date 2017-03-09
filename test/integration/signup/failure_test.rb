require 'test_helper'

class SignupFailureTest < ActionDispatch::IntegrationTest
  test "shows error messages" do
    visit "/"
    click_link t("menu.signup")
    click_button t("helpers.submit.create")

    assert_equal(current_path, "/signup")
    assert page.has_content?(t("form.error_messages"))
  end
end
