class ContatoPolicy < ApplicationPolicy

  def autenticado?
    if user then permissao = user.administration_level else return false end
    if permissao > 0 then
      true
    end
  end

  
  class Scope < Scope
    def resolve
      scope
    end
  end
end
