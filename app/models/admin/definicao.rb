class Admin::Definicao < ApplicationRecord
  belongs_to :admin_plano,class_name: "Plano"
end
