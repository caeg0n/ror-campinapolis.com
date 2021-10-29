class CategoriasController < ApplicationController
  def index
    @categorias = Admin::Categoria.all
    @categorias_paginados = Admin::Categoria.all.paginate(page: params[:page], per_page: 15)
    @super_categorias = Admin::SuperCategoria.all
    @usuarios = Admin::Usuario.all
    @clientes = Admin::Cliente.where(:visibility_status => true)
  end

  def show
    @categorias = Admin::Categoria.all
    @clientes = Admin::Cliente.all
    @super_categorias = Admin::SuperCategoria.all
    if defined? (params[:id])
      id = params[:id].to_i
      @categorias = Admin::Categoria.where(admin_super_categoria_id: id)
      @clientes = Admin::Cliente.where(admin_categoria_id: @categorias.ids)
    end
  end
end
