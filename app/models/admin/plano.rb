class Admin::Plano < ApplicationRecord
  has_many :admin_definicoes,class_name: "Definicao", foreign_key: 'admin_plano_id'

   	# Prety User name display for rails_amdin
	#NECESSARIO PARA MOSTRAR O VALOR CORRETO NA DROPDOWN EM CATEGORIA
	def to_s
    	return self.nome
	end
	
	def title
    	return self.to_s
	end
end