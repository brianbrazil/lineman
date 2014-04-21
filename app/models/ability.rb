class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    if user.admin?
      can :manage, :all
    end

    if user.official?
      can :read, Event
      can :read, Line
      can :update, Line
    end

    if user.attendee?
      can :read, Event
      can :read, Line
    end

  end
end
