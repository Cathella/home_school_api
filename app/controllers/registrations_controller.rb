class RegistrationsController < ApplicationController
  def create
    user = User.create!(
      email: params['user']['email'],
      first_name: params['user']['first_name'],
      last_name: params['user']['last_name'],
      grade: params['user']['grade'],
      student: params['user']['student'],
      password: params['user']['password'],
      password_confirmation: params['user']['password']
    )

    if user
      session[:user_id] = user.id
      render json: {
        status: :created,
        user: user
      }
    else
      render json: { status: 500 }
    end
  end
end