#require 'i18n'
#I18n.default_locale = :'pt-BR'
RailsAdmin.config do |config|
  config.parent_controller = 'ApplicationController'
  #config.included_models << "ActsAsTaggableOn::Tag"
  #config.included_models << "ActsAsTaggableOn::Tagging"
  #config.excluded_models << "Ckeditor::Asset"
  #config.excluded_models << "Ckeditor::AttachmentFile"
  #config.excluded_models << "Ckeditor::Picture"
  #config.included_models << "Admin::Article"
  #config.included_models << "Admin::Publisher"
  #config.included_models << "Admin::User"  
  #config.included_models << "Admin::News"
  #config.included_models << "Admin::Category"
  #config.included_models << "Admin::Advertisement"


  ActiveRecord::Base.descendants.each do |imodel|
    config.model "#{imodel.name}" do
      list do
        exclude_fields :created_at, :updated_at
      end
    end
  end

  config.model 'Admin::Categoria' do
    edit do
      configure :admin_super_categoria do
        label "Super Categoria"
      end
    end
  end


  #  label "Comercial" 
  #  label_plural "Comerciais"
  #  edit do
   #   configure :customer do
   #     label "Cliente"
   #   end
   #   configure :admin_publisher do
   #     label "Publicado por"
   #   end
   #   configure :expiration do
   #     label "Expira em"
   #   end
   #   configure :image do
   #     label "Imagem"
   #   end
   # end
  

  # config.model 'Admin::Category' do
  #   edit do
  #     configure :name do
  #       label "Nome"
  #     end
  #     configure :active do
  #       label "Visivel"
  #     end
  #     configure :slug do
  #       hide
  #     end
  #   end
  # end

  # config.model 'Admin::Publisher' do
  #   edit do
  #     configure :admin_user do
  #       label "Nome do Usuário"
  #     end
  #     configure :name do
  #       label "Nome"
  #     end
  #     configure :active do
  #       label "Visivel"
  #     end
  #     configure :slug do
  #       hide
  #     end
  #   end
  # end

  # config.model 'Admin::Article' do
  #   label "Artigo" 
  #   label_plural "Artigos"
  #   field :admin_publisher do
  #     label 'Autor'
  #   end
  #   field :title do
  #     label 'Titulo'
  #   end
  #   field :date do
  #     label 'Data'
  #   end
  #   edit do
  #     field :article, :ck_editor
  #     include_all_fields
  #     configure :article do
  #       label 'Artigo: '
  #     end
  #     configure :admin_category do
  #       label 'Categoria'
  #     end
  #      configure :admin_publisher do
  #       label 'Autor'
  #     end
  #     configure :title do
  #       label 'Titulo'
  #     end
  #      configure :subtitle do
  #       label 'Subtitulo'
  #     end
  #      configure :date do
  #       label 'Data'
  #     end
  #     configure :active do
  #       label 'Visivel'
  #     end
  #     configure :slug do
  #       hide
  #     end
  #     fields_of_type :tag_list do
  #       partial 'tag_list_with_suggestions'
  #       ratl_max_suggestions -1
  #       label 'Descritores'
  #     end
  #   end 
  # end

  # config.model 'Admin::News' do
  #   label "Notícia" 
  #   label_plural "Notícias"
  #   edit do
  #     field :text, :ck_editor
  #     include_all_fields
  #     configure :title do
  #       label 'Titulo da Noticia: '
  #     end
  #     configure :date do
  #       label 'Data da Notícia: '
  #     end
  #     configure :subtitle do
  #       label 'Subtitulo da Notícia: '
  #     end
  #     configure :text do
  #       label 'Notícia: '
  #     end
  #     configure :active do
  #       label 'Noticia está visivel?: '
  #     end
  #     configure :admin_publisher do
  #       label 'Autor da Notícia'
  #     end
  #     configure :admin_category do
  #       label 'Categoria da Notícia'
  #     end
  #     configure :slug do
  #       hide
  #     end
  #   end
  # end

  # config.model 'Admin::Category' do
  #   label "Categoria" 
  #   label_plural "Categorias"
  # end

  # config.model 'Admin::Publisher' do
  #   label "Autor" 
  #   label_plural "Autores"
  # end

  # config.model 'Admin::User' do
  #   label "Usuario" 
  #   label_plural "Usuarios"
  # end


  ### Popular gems integration
  ## == Devise ==
  config.authenticate_with do
    warden.authenticate! scope: :admin_usuario
  end
  config.current_user_method(&:current_admin_usuario)

  ## == Cancan ==
  # config.authorize_with :cancan

  # == Pundit ==
  config.authorize_with :pundit


  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app
    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end

end
