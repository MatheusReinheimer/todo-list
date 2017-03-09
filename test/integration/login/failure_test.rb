require "test_helper"

class LoginSuccessTest < ActionDispatch::IntegrationTest
  test "it fails with invalid credentials" do
    visit "/"
    click_link "Acessar minha conta"

    click_button "Acessar minha conta"

    assert_equal "/login", current_path
    assert page.has_content?(alert("login.create"))
  end
end
