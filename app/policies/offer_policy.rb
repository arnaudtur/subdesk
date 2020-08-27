class OfferPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end


  def destroy?
    record.user == user
  end

  def edit?
    record.user == user
  end

  def update?
    record.user == user
  end

    def index?
      true
    end

    def show?
      true
    end

    def create?
      record.user == user
    end

    def new?
      true
    end

    def matching_r?
      true
    end
end
