class AdminController < ApplicationController
  before_action :authenticate_user!
  before_action :authenticate_admin!
  load_and_authorize_resource

  def authenticate_admin!
    unless current_user.has_role? :admin
      redirect_to root_path
    end
  end
end
