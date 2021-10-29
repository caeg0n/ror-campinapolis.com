class Admin::SuperCategoria < ApplicationRecord
	# Prety User name display for rails_amdin
	#NECESSARIO PARA MOSTRAR O VALOR CORRETO NA DROPDOWN EM CATEGORIA
	def to_s
    	return self.descricao
	end
	
	def title
    	return self.to_s
	end
end
