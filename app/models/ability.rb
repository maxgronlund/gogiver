class Ability
  include CanCan::Ability

  def initialize(user)
    if user 
      if user.super?
        can :manage, :all
      elsif user.admin?
        can :manage, Goal
        can :manage, Help
        can :manage, KetValue
        can :manage, LifeArray
        can :manage, TextContent
        
      elsif user.member?#ordinary user
    
        can :manage, Goal, user_id => user.id
        can :manage, KeyValue, user_id => user.id
        can :manage, LifeArray, :user_id => user.id
        can :manage, User, :user_id => user.id
        can :read, Help
      end
    # When not logged in
    else
     
     can :create, User # <----------- Uncomment this to alow users to signup by them self
     can :read, TextContent
    end
  end
end
