class PrincipalController < ApplicationController
  def index
    #ahoy.track "nova_visita", {info: "principalcontroller#index"}
    @categorias = Admin::Categoria.all
    @super_categorias = Admin::SuperCategoria.all
    @recursos = Admin::Recurso.all
  end
end
