class Admin::Usuario < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable,:validatable

  #belongs_to :admin_categoria, :class_name => "Categoria"
  #belongs_to :admin_plano, :class_name => "Plano"
  belongs_to :admin_cliente, :class_name => "Cliente"
end
