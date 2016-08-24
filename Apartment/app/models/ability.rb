class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user
 
    if user.role_id == 8 #7 registered, 8 admin, 9 property owner, 10 flat owner, 11 support
      can :manage, :all
    
    elsif user.role_id == 9

        can :update, Property do |property|
            property.user == user
        end
        can :destroy, Property do |property|
            property.user == user
        end
         can :update, Flat do |flat|
            flat.user == user
        end
        can :destroy, Flat do |flat|
            flat.user == user
        end

        can :update, Ticket do |ticket|
            ticket.user == user
        end
        can :destroy, Ticket do |ticket|
            ticket.user == user
        end

        
        can :read, Property
        can :read, Flat
        

        can :create, Ticket
        can :create, Property
        can :create, Flat

    elsif user.role_id == 10

         can :update, Flat do |flat|
            flat.user == user
        end
        can :destroy, Flat do |flat|
            flat.user == user
        end
         can :update, Ticket do |ticket|
            ticket.user == user
        end
        can :destroy, Ticket do |ticket|
            ticket.user == user
        end

        can :read, Property
        can :read, Flat
    

        can :create, Ticket
        can :create, Property
        can :create, Flat

    elsif user.role_id == 11

        can :destroy, Ticket
        can :update, Ticket
        can :read, Ticket
        can :read, Property
        can :read, Flat
        
    else 
        can :read, Ticket
        can :read, Property
        can :read, Flat
    end
    # Define abilities for the passed in user here. For example:
    #
    #   user ||= User.new # guest user (not logged in)
    #   if user.admin?
    #     can :manage, :all
    #   else
    #     can :read, :all
    #   end
    #
    # The first argument to `can` is the action you are giving the user
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on.
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities
  end
end
