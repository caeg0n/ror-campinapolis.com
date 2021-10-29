class PlanoController < ApplicationController
  def index
    @categorias = Admin::Categoria.all
    @super_categorias = Admin::SuperCategoria.all
    @recursos = Admin::Recurso.all
  end

  def tabeladeprecos
  end

  def compara
  end
end
