class Contato < ApplicationRecord
  validates :nome, presence: true 
  validates :mail, presence: true
  validates_format_of :mail, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i,:message => "endereço de e-mail invalido!"
end
