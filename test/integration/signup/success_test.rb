require 'test_helper'

class SignupSuccessTest < ActionDispatch::IntegrationTest
  test "creates account" do
    visit "/"
    click_link "Criar minha conta"
    fill_in "Seu e-mail", with: "john@example.org"
    fill_in "Sua senha", with: "test"
    fill_in "Confirme sua senha", with: "test"
    click_button "Criar minha conta"

    assert_equal current_path "/login"
    assert page.has_content?("Cadastro realizado com sucesso!")
  end
end
