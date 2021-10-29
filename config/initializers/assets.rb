Rails.application.config.assets.version = '1.0'
Rails.application.config.assets.precompile += %w(application-bs.css
                                                 application-bs.js
                                                 categorias.js.coffee
                                                 recursos.js.coffee
                                                 painel_de_controle.js.coffee
                                                 admin/categorias.js
                                                 admin/recursos.js
                                                 admin/usuarios.js.coffee
                                                 admin/cliente_status.js.coffee
                                                 )
