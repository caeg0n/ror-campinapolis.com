class Admin::CategoriasController < ApplicationController
  before_action :authenticate_admin_usuario!
  before_action :set_admin_categoria, only: [:show, :edit, :update, :destroy]

  def index
    @admin_categorias = Admin::Categoria.all
  end

  def show
  end

  def new
    @admin_categoria = Admin::Categoria.new
  end

  def edit
  end

  def create
    @admin_categoria = Admin::Categoria.new(admin_categoria_params)

    respond_to do |format|
      if @admin_categoria.save
        format.html { redirect_to @admin_categoria, notice: 'Categoria was successfully created.' }
        format.json { render :show, status: :created, location: @admin_categoria }
      else
        format.html { render :new }
        format.json { render json: @admin_categoria.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @admin_categoria.update(admin_categoria_params)
        format.html { redirect_to @admin_categoria, notice: 'Categoria was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_categoria }
      else
        format.html { render :edit }
        format.json { render json: @admin_categoria.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @admin_categoria.destroy
    respond_to do |format|
      format.html { redirect_to admin_categorias_url, notice: 'Categoria was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_admin_categoria
      @admin_categoria = Admin::Categoria.find(params[:id])
    end

    def admin_categoria_params
      params.require(:admin_categoria).permit(:nome,:admin_super_categoria_id)
    end
end
