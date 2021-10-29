#db
rails db:drop
rails db:create
#destroy
rails destroy scaffold admin/categoria
rails destroy scaffold admin/plano
rails destroy scaffold admin/cliente
rails g scaffold admin/categoria nome:string
rails g scaffold admin/plano nome:string valor:decimal
rails g scaffold admin/cliente admin_categoria:references admin_plano:references nome:string slogan:string telefone:string endereco:string
#migration
rails db:migrate
rails g bootstrap:layout admin/categorias
rails g bootstrap:layout admin/planos
rails g bootstrap:layout admin/clientes
rails g bootstrap:themed admin/categorias
rails g bootstrap:themed admin/planos
rails g bootstrap:themed admin/clientes
