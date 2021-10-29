class ApplicationController < ActionController::Base
  include Pundit
  #protect_from_forgery with: :exception
  #before_action :authenticate_admin_usuario!
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  

  private
  def user_not_authorized
    flash[:alert] = "Você não tem autorização para acessar este conteudo."
    redirect_to(request.referrer || root_path)
  end

  def pundit_user
    current_admin_usuario
  end
end
