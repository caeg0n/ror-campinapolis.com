class Admin::ClientesController < ApplicationController
  #skip_before_filter :authenticate_admin_usuario!
  #skip_before_action :verify_authenticity_token
  before_action :authenticate_admin_usuario!, except: :rss
  before_action :set_admin_cliente, only: [:show, :edit, :update, :destroy]

  def index
    authorize Admin::Usuario,:autenticado?
    @admin_clientes = Admin::Cliente.all
  end

  def rss
    @admin_clientes = Admin::Cliente.where(visibility_status: :true,empresa_status: 1).order('random()').take(3)
    respond_to do |format|
      format.html { authorize Admin::Usuario,:autenticado? }
      format.rss { render :layout => false }
      format.json { render :json => @admin_clientes,:layout => false }
    end
  end

  #def show
  #end

  def new
    authorize Admin::Usuario,:autenticado?
    @admin_cliente = Admin::Cliente.new
  end

  #def edit
  #end

  def create
    #authorize Admin::Usuario,:autenticado?
    @admin_cliente = Admin::Cliente.new(admin_cliente_params)
    respond_to do |format|
      if @admin_cliente.save
        format.html { redirect_to @admin_cliente, notice: 'Novo cliente adicionado com sucesso!' }
        format.json { render :show, status: :created, location: @admin_cliente }
      else
        format.html { render :new }
        format.json { render json: @admin_cliente.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    authorize Admin::Usuario,:autenticado?
    respond_to do |format|
      if @admin_cliente.update(admin_cliente_params)
        format.html { redirect_to @admin_cliente, notice: 'Cliente was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_cliente }
      else
        format.html { render :edit }
        format.json { render json: @admin_cliente.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    authorize Admin::Usuario,:autenticado?
    @admin_cliente.destroy
    respond_to do |format|
      format.html { redirect_to admin_clientes_url, notice: 'Cliente was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_admin_cliente
      @admin_cliente = Admin::Cliente.find(params[:id])
    end

    def admin_cliente_params
      params.require(:admin_cliente).permit(:admin_categoria_id, :admin_plano_id, :empresa,:proprietario, :slogan, :telefone, :endereco,:imagem,:visibility_status,:admin_cliente_status_id,:url)
    end
end
