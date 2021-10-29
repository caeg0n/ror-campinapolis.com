class Admin::PlanosController < ApplicationController
  before_action :authenticate_admin_usuario!
  before_action :set_admin_plano, only: [:show, :edit, :update, :destroy]

  def index
    @admin_planos = Admin::Plano.all
  end

  def show
  end

  def new
    @admin_plano = Admin::Plano.new
  end

  def edit
  end

  def create
    @admin_plano = Admin::Plano.new(admin_plano_params)

    respond_to do |format|
      if @admin_plano.save
        format.html { redirect_to @admin_plano, notice: 'Plano was successfully created.' }
        format.json { render :show, status: :created, location: @admin_plano }
      else
        format.html { render :new }
        format.json { render json: @admin_plano.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @admin_plano.update(admin_plano_params)
        format.html { redirect_to @admin_plano, notice: 'Plano was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_plano }
      else
        format.html { render :edit }
        format.json { render json: @admin_plano.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @admin_plano.destroy
    respond_to do |format|
      format.html { redirect_to admin_planos_url, notice: 'Plano was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_admin_plano
      @admin_plano = Admin::Plano.find(params[:id])
    end

    def admin_plano_params
      params.require(:admin_plano).permit(:nome, :valor)
    end
end
