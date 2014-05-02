class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    if user.admin?
      can :manage, :all
    end

    if user.official?
      can :read, Event
      can :read, Session
      can :update, Session
    end

    if user.attendee?
      can :read, Event
      can :read, Session
    end

  end
end
