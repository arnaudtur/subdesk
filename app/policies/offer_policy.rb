class OfferPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def edit?
    true
  end

  def update?
    true
  end

    def index?
      true
    end

    def show?
      true
    end

    def create?
      true
    end

    def new?
      true
    end

    def matching_r?
      true
    end
end
