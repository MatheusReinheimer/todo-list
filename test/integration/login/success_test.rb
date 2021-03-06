require "test_helper"

class LoginSuccessTest < ActionDispatch::IntegrationTest
  test "it logins on the app" do
    visit "/"
    click_link "Acessar minha conta"

    fill_in label("user.email"), with: "test@test"
    fill_in label("user.password"), with: "test"
    click_button "Acessar minha conta"

    assert_equal "/tasks", current_path
  end
end
