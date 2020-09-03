class MessagePolicy < ApplicationPolicy
  def resolve
    scope.all
  end


    def show?
      true
    end

    def index?
      true
    end

    def create?
      true
    end

end