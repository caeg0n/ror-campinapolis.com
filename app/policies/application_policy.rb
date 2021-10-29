class ApplicationPolicy
  attr_reader :user, :record

  def initialize(user, record)
    @user = user
    @record = record
  end

  def dashboard?
    true
  end

  def index?
     true
  end

  def export?
    true
  end

  def destroy?
    true
  end

  def edit?
    true
  end

  def show?
    true
  end

  def show_in_app?
  end

  # def show?
  #   scope.where(:id => record.id).exists?
  # end

  # def create?
  #   false
  # end

  def new?
    true
  end

  # def update?
  #   false
  # end

  # def edit?
  #   update?
  # end

  # def destroy?
  #   false
  # end

  def scope
    Pundit.policy_scope!(user, record.class)
  end

  class Scope
    attr_reader :user, :scope

    def initialize(user, scope)
      @user = user
      @scope = scope
    end

    def resolve
      scope
    end
  end
end
