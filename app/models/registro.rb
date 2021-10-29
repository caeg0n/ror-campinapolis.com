class Registro < ApplicationRecord
  belongs_to :plano
  validates :nome, presence: true   
  validates :empresa, presence: true
  validates_presence_of :telefone, unless: [:mail?],:message => "precisamos do seu telefone ou do seu e-mail"
  validates_presence_of :mail, unless: [:telefone?],:message => "precisamos do seu e-mail ou do seu telefone"
  validates_format_of :mail, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i,if: [:mail?],:message => "endereço de e-mail invalido"
end
