class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index
  end

  def create?
    true
  end

  def new?
    true
  end

  def edit?
    true
  end

  def update?
    true
  end

  def accepter_discuss_booking?
    true
  end

  def accepter_booking?
    true
  end

  def cancel_booking?
    true
  end

  def refused_booking?
    true
  end

end
