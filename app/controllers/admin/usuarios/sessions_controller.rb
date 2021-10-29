require 'stcampinapolis'
class Admin::Usuarios::SessionsController < Devise::SessionsController
  #before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  def create
   user = Admin::Usuario.new
   user.attributes = {email: params[:admin_usuario][:email]}
   user.attributes = {password: params[:admin_usuario][:password]}
   validator = MyAdminUsuarioValidator.new(user)
   if validator.valid?
    usuario = Admin::Usuario.where(email:user.email)
    STCampinapolis.instance.set_usuario(usuario)
    super
   else
     flash[:alert] = validator.errors.full_messages[0]
     sign_in_and_redirect user
   end
  end

  def after_sign_in_path_for(resource_or_scope)
    if not current_admin_usuario.id.nil?
      "/site/admin"
    else
      new_admin_usuario_session_path
    end
  end

  def destroy
    super
  end

  # protected
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end

end
