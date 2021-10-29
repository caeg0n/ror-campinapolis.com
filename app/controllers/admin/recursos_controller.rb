class Admin::RecursosController < ApplicationController
  before_action :authenticate_admin_usuario!
  before_action :set_admin_recurso, only: [:show, :edit, :update, :destroy]
  include Admin::RecursosHelper

  def index
    @admin_recursos = Admin::Recurso.all
  end

  def show
  end

  def new
    @admin_recurso = Admin::Recurso.new
    @images = get_images_from_assets
  end

  def edit
    @images = get_images_from_assets
  end

  def create
    @admin_recurso = Admin::Recurso.new(admin_recurso_params)

    respond_to do |format|
      if @admin_recurso.save
        format.html { redirect_to @admin_recurso, notice: 'Recurso was successfully created.' }
        format.json { render :show, status: :created, location: @admin_recurso }
      else
        format.html { render :new }
        format.json { render json: @admin_recurso.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/recursos/1
  # PATCH/PUT /admin/recursos/1.json
  def update
    respond_to do |format|
      if @admin_recurso.update(admin_recurso_params)
        format.html { redirect_to @admin_recurso, notice: 'Recurso was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_recurso }
      else
        format.html { render :edit }
        format.json { render json: @admin_recurso.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @admin_recurso.destroy
    respond_to do |format|
      format.html { redirect_to admin_recursos_url, notice: 'Recurso was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_recurso
      @admin_recurso = Admin::Recurso.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_recurso_params
      params.require(:admin_recurso).permit(:titulo, :desc, :img, :mini_desc, :complete_desc)
    end
end
