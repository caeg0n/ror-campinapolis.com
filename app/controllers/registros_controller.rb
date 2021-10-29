class RegistrosController < ApplicationController
  include SendGridHelper
  include ApplicationHelper
  before_action :set_registro, only: [:show, :edit, :update, :destroy]

    def index
      @registro = Registro.new
    end

    def listar
      authorize Registro,:autenticado?
      @registros = Registro.all
      #render :layout => 'registros'
    end

    def send_mail(mail_to,subject,content)
      SendGridHelper.send_mail(mail_to,subject,content)
    end

    def create
      plano = Admin::Plano.where(nome:registro_params[:admin_plano_id])
      plano_id = plano[0].id
      @registro = Registro.new(registro_params)
      @registro.admin_plano_id = plano_id
      respond_to do |format|
        if @registro.save
          format.html { redirect_to "/registros", notice: '
          Sua mensagem foi entregue com sucesso! Assim que pudermos entraremos em contato.' }
          #format.json { render :show, status: :created, location: @contato }
          if validate(registro_params[:mail]) == true
            send_mail(registro_params[:mail],"Contato Campinápolis","Recebemos seu contato! Em breve retornaremos")
          end
        else
          format.html { render :index }
          #format.json { render json: @contato.errors, status: :unprocessable_entity }
        end
      end
    end

    private
      def set_registro
        @registro = Registro.find(params[:id])
      end

      def registro_params
        params.require(:registro).permit(:admin_plano_id,:nome, :mail,:empresa,:endereco,:telefone)
      end
end
