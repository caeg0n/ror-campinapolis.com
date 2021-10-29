class ContatosController < ApplicationController
  include SendGridHelper
  before_action :set_contato, only: [:show, :edit, :update, :destroy]
  layout 'application'

  def index
    @contato = Contato.new
    @categorias = Admin::Categoria.all
    @super_categorias = Admin::SuperCategoria.all
    @recursos = Admin::Recurso.all
  end

  def listar
    authorize Contato,:autenticado?
    @contatos = Contato.all
    render :layout => 'contatos'
  end

  # def show
  # end

  # def new
  #   @contato = Contato.new
  # end

  # def edit
  # end
  def send_mail(mail_to,subject,content)
    SendGridHelper.send_mail(mail_to,subject,content)
  end

  def create
    @contato = Contato.new(contato_params)
    respond_to do |format|
      if @contato.save
        format.html { redirect_to "/contatos", notice: '
        Sua mensagem foi entregue com sucesso! Assim que pudermos entraremos em contato.' }
        #format.json { render :show, status: :created, location: @contato }
        send_mail(contato_params[:mail],"Contato Campinápolis","Recebemos seu contato! Em breve retornaremos")
      else
        format.html { render :index }
        #format.json { render json: @contato.errors, status: :unprocessable_entity }
      end
    end
  end

  # def update
  #   respond_to do |format|
  #     if @contato.update(contato_params)
  #       format.html { redirect_to @contato, notice: 'Contato was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @contato }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @contato.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # def destroy
  #   @contato.destroy
  #   respond_to do |format|
  #     format.html { redirect_to contatos_url, notice: 'Contato was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  # end

  private
    def set_contato
      @contato = Contato.find(params[:id])
    end

    def contato_params
      params.require(:contato).permit(:nome, :mail, :mensagem)
    end
end
