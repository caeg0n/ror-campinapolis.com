Admin::Categoria.destroy_all if Rails.env == "development"
Admin::SuperCategoria.destroy_all if Rails.env == "development"
Admin::Usuario.destroy_all if Rails.env == "development"
Admin::Recurso.destroy_all if Rails.env == "development"
Admin::Plano.destroy_all if Rails.env == "development"
Admin::SuperCategoria.create!(descricao: "Casa e Campo")
Admin::Categoria.create!(nome: "Clinica Veterinaria",admin_super_categoria_id: 1)
Admin::Plano.create!(nome: "Empresa Pequena",valor:49.50)
Admin::Cliente.create!([{admin_categoria_id:1,admin_plano_id:1,slogan:"slogan",telefone:"telefone",
	                     endereco:"endereço",empresa:"empresa",proprietario:"proprietario",
	                     visibility_status:true,status:"on line",url:"url"}])
Admin::Usuario.create!(administration_level:1,email:'carloseduardo@campinapolis.com',password:'@#sollua123',
	                   password_confirmation:'@#sollua123',admin_cliente_id:1)
Admin::Recurso.create!([{titulo:"suporte 24 horas",desc:"Seu comércio e funcionários contarão com suporte em tempo integral através do celular, e-mail ou pessoalmente.", img:"feature-2.png",mini_desc:"",complete_desc:""},
                        {titulo:"compatível com dispositivos móveis",desc:"O site do seu comércio poderá ser visualizado em qualquer dispositivo movel. Seus clientes sempre poderão visualizar as imagens de suas ofertas de qualquer dispositivo.",img:"feature-1.png",mini_desc:"",complete_desc:""},
                        {titulo:"atualizações gratis",desc:"Estaremos sempre atualizando nossa plataforma para melhor atender nossos clientes. Estaremos em continuo desenvolvimento, e qualquer nova atualização nessessaria será feita automaticamente.",img:"feature-3.png",mini_desc:"",complete_desc:""},
                        {titulo:"99.9% do tempo on-line",desc:"Nossa plataforma está na nuvem, isso significa que seu comercio ficará on-line disponibilizando seu site para seus clientes durante 99,9% do tempo.",img:"feature-4.png",mini_desc:"",complete_desc:""}
                      ])
p "Pronto"
#Spree::Core::Engine.load_seed if defined?(Spree::Core)
#Spree::Auth::Engine.load_seed if defined?(Spree::Auth)