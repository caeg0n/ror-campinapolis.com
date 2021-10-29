class SobreController < ApplicationController
  def index
    @categorias = Admin::Categoria.all
    @usuarios = Admin::Usuario.all
    @super_categorias = Admin::SuperCategoria.all
    @recursos = Admin::Recurso.all
  end
end
