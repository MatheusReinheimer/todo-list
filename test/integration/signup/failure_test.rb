require 'test_helper'

class SignupFailureTest < ActionDispatch::IntegrationTest
  test "shows error messages" do
    visit "/"
    click_link I18n.t("menu.signup")
    click_button I18n.t("helpers.submit.user.create")

    assert_equal(current_path, "/signup")
    assert page.has_content?("Verifique o formulario antes de continuar")
  end
end
