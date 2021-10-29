require 'stcampinapolis'
class LoginController < ApplicationController
  def index
  end

  def login
    username_seguro = secure_params[:username]
    password_seguro = secure_params[:password]
    cliente = Admin::Cliente.where(username: username_seguro, password: password_seguro)
    if cliente.count == 1
      STCampinapolis.instance.set_cliente(cliente)
      redirect_to painelc_index_path
    else
      flash[:error] = "Usuário ou Senha Invalidos!"
      redirect_to login_path
    end
  end

  def secure_params
    params.require(:login).permit(:username,:password)
  end
end
