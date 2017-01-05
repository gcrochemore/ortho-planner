class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    #
    user ||= User.new # guest user (not logged in)

    alias_action :create, :read, :update, to: :crud

    if user.has_role? :admin
      can :manage, :all
    end

    if user.has_role? :repository_manager
      can :manage, :office
      can :manage, :pathology
      can :manage, :practitioner_profession
      can :manage, :practitioner
      can :manage, :health_place
      can :manage, :health_place_type
      can :manage, :interaction_object
      can :manage, :interaction_type
    end

    if user.has_role? :practitioner
      #can :read, Project, active: true, :user_id user.id
      can :crud, :patient
      can :crud, :therapy
      can :crud, :session
      can :crud, :absence
      can :crud, :interaction
      can :crud, :waiting_list
      can :read, :practitioner
      can :read, :health_place
    end  

    if user.has_role? :secretary
      #can :read, Project, active: true, :user_id user.id
      can :read, :patient
      can :read, :therapy #si la therapy concerne un medecin du cabinet ou elle est rattachée 
      can :crud, :session #si la session concerne une therapy qui concerne un medecin du cabinet ou elle est rattachée 
      can :read, :practitioner
    end 
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
