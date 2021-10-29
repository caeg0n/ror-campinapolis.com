class GaleriaController < ApplicationController
  def index
    #cliente = STCampinapolis.instance.get_cliente.first
    cliente = current_admin_usuario
    @imagens = Foto.where(admin_cliente_id: cliente.id)
  end
end
