class User::RegistrationsController < Devise::RegistrationsController
  after_action :create_profile, only: [:create]
  # POST /resource
  def create 
    super
  end

  private

  def create_profile
    if resource.id
      puts "*" * 50
      p resource

      puts "*" * 50
      Profile.create(user: resource, city: City.first )
    end
  end

end
