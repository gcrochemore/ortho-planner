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
      can :manage, Office
      can :manage, Pathology
      can :manage, PractitionerProfession
      can :manage, Practitioner
      can :manage, HealthPlace
      can :manage, HealthPlaceType
      can :manage, InteractionObject
      can :manage, InteractionType
    end

    if user.has_role? :waiting_list_manager
      can :manage, Patient
      can :manage, WaitingList
    end

    if user.has_role? :practitioner
      #can :read, Project, active: true, :user_id user.id
      can :crud, Patient
      can :crud, Therapy
      can :crud, Session
      can :crud, Absence
      can :crud, Interaction
      can :crud, WaitingList
      can :read, Practitioner
      can :read, HealthPlace
    end  

    if user.has_role? :secretary
      #can :read, Project, active: true, :user_id user.id
      can :read, Patient
      can :read, Therapy #si la therapy concerne un medecin du cabinet ou elle est rattachée 
      can :crud, Session #si la session concerne une therapy qui concerne un medecin du cabinet ou elle est rattachée 
      can :read, Practitioner
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
