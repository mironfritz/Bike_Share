class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end
  def create?
    return record.bike.user != user
  end

  def update?
    record.user == user
    # - record: the restaurant passed to the `authorize` method in controller
    # - user:   the `current_user` signed in with Devise.
  end

  def edit?
    return update?
  end

  def destroy?
    record.user == user || record.bike.user == user
  end
end
