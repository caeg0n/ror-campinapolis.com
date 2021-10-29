class Admin::Cliente < ApplicationRecord
  belongs_to :admin_categoria, :class_name => "Categoria"
  belongs_to :admin_plano, :class_name => "Plano"
  enum empresa_status: { "on line": 1, "em manutencao": 2, "em desenvolvimento": 3,
  				 "desativado temporariamente": 4, "em negociacao": 5,
  				 "nao contratado": 6, "off line": 7 
  			   }
  enum enum_img: { "nenhuma": 1, "url placeholder": 2, "url do site": 3,"thumbnail do cloudinary": 4 }

  default_scope { joins(:admin_categoria).order('empresa_status=1 DESC,empresa_status=7 DESC,empresa_status=3 DESC') }
  validates :empresa, uniqueness: true
  
  rails_admin do
    label "Clientes"
    label_plural "Clientes"
    weight -1
    edit do
      include_fields :admin_categoria,:admin_plano,:empresa_status,
                      :visibility_status,:empresa,:slogan,:proprietario,
                      :telefone,:endereco,:imagem,:url,:thumb_url,:enum_img
      configure :url do
        label "url do site"
      end
      configure :thumb_url do
        label "thumbnail do cloudinary"
      end
      configure :enum_img do
        label "qual imagem usar?"
      end
      configure :imagem do
        label "url placeholder"
      end
      configure :visibility_status do
        label "visivel?"
      end
      configure :empresa_status do
        label "Status"
      end
      configure :admin_categoria do
        label "Categoria"
      end
      configure :admin_plano do
        label "Plano"
      end
    end
  end

end
