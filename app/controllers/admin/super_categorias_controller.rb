class Admin::SuperCategoriasController < ApplicationController
  before_action :set_admin_super_categoria, only: [:show, :edit, :update, :destroy]

  def index
    @admin_super_categorias = Admin::SuperCategoria.all
  end

  def show
  end

  def new
    @admin_super_categoria = Admin::SuperCategoria.new
  end

  def edit
  end

  def create
    @admin_super_categoria = Admin::SuperCategoria.new(admin_super_categoria_params)

    respond_to do |format|
      if @admin_super_categoria.save
        format.html { redirect_to @admin_super_categoria, notice: 'Super categoria was successfully created.' }
        format.json { render :show, status: :created, location: @admin_super_categoria }
      else
        format.html { render :new }
        format.json { render json: @admin_super_categoria.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @admin_super_categoria.update(admin_super_categoria_params)
        format.html { redirect_to @admin_super_categoria, notice: 'Super categoria was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_super_categoria }
      else
        format.html { render :edit }
        format.json { render json: @admin_super_categoria.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @admin_super_categoria.destroy
    respond_to do |format|
      format.html { redirect_to admin_super_categorias_url, notice: 'Super categoria was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_admin_super_categoria
      @admin_super_categoria = Admin::SuperCategoria.find(params[:id])
    end

    def admin_super_categoria_params
      params.require(:admin_super_categoria).permit(:descricao)
    end
end
