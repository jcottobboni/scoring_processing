# frozen_string_literal: true

class RootController < ApplicationController
  # GET /
  def index
    @users = User.all.order(:created_at)
  end
end
