class FotosController < ApplicationController

  def create
    cliente = STCampinapolis.instance.get_cliente[0]
    cliente = current_admin_usuario
    @foto = Foto.new(foto_params)
    @foto.admin_cliente_id = cliente.id
    respond_to do |format|
      if resp = @foto.save
        format.html { redirect_to galeria_index_path, notice: 'Imagem enviada com sucesso.' }
      else
        format.html { redirect_to galeria_index_path }
      end
    end
  end

  private
    def foto_params
      return params.require(:foto).permit(:image)
    end

end
