class SupervisorController < ApplicationController
  before_action :authorize_request
  def index
    user = User.find_by id: params[:id]
    users = User.where supervisor_email: user.email
    render json: {
        status: 'ok',
        person: user,
        subordinates: users.map { |user| {
            infoComplete: false,
            id: user.id,
            name: user.name
        } }
    }
  end
end
