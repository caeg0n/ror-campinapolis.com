class RecursoController < ApplicationController
  def index
    @recursos = Admin::Recurso.all
  end

  def show
    @recursos = Admin::Recurso.all
    if defined? (params[:id])
      @id = params[:id].to_i
    end
    render 'index'
  end
end
