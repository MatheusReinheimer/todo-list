class SignupController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    # binding.pry
    if @user.save
      flash[:notice] = "Cadastro realizado com sucesso!"
      redirect_to "/login"
    else
      flash[:notice] = "Verifique o formulario antes de continuar"
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
