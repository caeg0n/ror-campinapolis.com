class Admin::Categoria < ApplicationRecord
	belongs_to :admin_super_categoria,class_name: "SuperCategoria"
	default_scope { order nome: :ASC }

	  	# Prety User name display for rails_amdin
	#NECESSARIO PARA MOSTRAR O VALOR CORRETO NA DROPDOWN EM CATEGORIA
	def to_s
    	return self.nome
	end
	
	def title
    	return self.to_s
	end
end
