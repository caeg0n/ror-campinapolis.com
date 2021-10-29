class Admin::DefinicoesController < ApplicationController
  before_action :set_admin_definicao, only: [:show, :edit, :update, :destroy]

  def index
    @admin_definicoes = Admin::Definicao.all
  end

  def show
  end

  def new
    @admin_plano = Admin::Plano.find(params[:plano_id])
    @admin_definicao = @admin_plano.admin_definicoes.build
  end

  def edit
  end

  def create
    @admin_definicao = Admin::Definicao.new(admin_definicao_params)
    respond_to do |format|
      if @admin_definicao.save
        format.html { redirect_to admin_plano_definicoes_path, notice: 'Definicao was successfully created.' }
        format.json { render :show, status: :created, location: @admin_definicao }
      else
        format.html { render :new }
        format.json { render json: @admin_definicao.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @admin_definicao.update(admin_definicao_params)
        format.html { redirect_to @admin_definicao, notice: 'Definicao was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_definicao }
      else
        format.html { render :edit }
        format.json { render json: @admin_definicao.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @admin_definicao.destroy
    respond_to do |format|
      format.html { redirect_to admin_definicoes_url, notice: 'Definicao was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_admin_definicao
      @admin_definicao = Admin::Definicao.find(params[:id])
    end

    def admin_definicao_params
      params.require(:admin_definicao).permit(:admin_plano_id, :desc)
    end
end
