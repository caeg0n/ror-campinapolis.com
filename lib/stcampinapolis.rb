require 'singleton'
class STCampinapolis
  include Singleton

  def initialize
    @@usuario = nil
  end

  def set_usuario(u)
    @@usuario = u
  end


  def get_usuario
    return @@usuario
  end
end
