class InformativosController < ApplicationController
  before_action :set_informativo, only: [:show, :edit, :update, :destroy]

  # def index
  #   @informativos = Informativo.all
  # end

  # def show
  # end

  # def new
  #   @informativo = Informativo.new
  # end

  # def edit
  # end

  def create
    @informativo = Informativo.new(informativo_params)
    respond_to do |format|
      if @informativo.save
        format.html { redirect_to root_path, notice: 'Recebemos seu e-mail! Agora você receberá todas as nossas novidades.' }
        #format.json { render :show, status: :created, location: @informativo }
      else
        format.html { redirect_to root_path, alert: 'e-mail inválido!' }
        #format.json { render json: @informativo.errors, status: :unprocessable_entity }
      end
    end
  end

  # def update
  #   respond_to do |format|
  #     if @informativo.update(informativo_params)
  #       format.html { redirect_to @informativo, notice: 'Informativo was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @informativo }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @informativo.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # def destroy
  #   @informativo.destroy
  #   respond_to do |format|
  #     format.html { redirect_to informativos_url, notice: 'Informativo was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  # end

  private
    def set_informativo
      @informativo = Informativo.find(params[:id])
    end

    def informativo_params
      params.require(:informativo).permit(:mail)
    end
end
