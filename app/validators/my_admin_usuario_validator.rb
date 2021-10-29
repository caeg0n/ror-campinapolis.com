class MyAdminUsuarioValidator < SimpleDelegator
  include ActiveModel::Validations
  validates :email,presence: true
  validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i,message:"Inválido!"
  validates :password, :presence => true
end