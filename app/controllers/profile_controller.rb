
class ProfileController < ApplicationController
  before_filter :authorize

  def index
    @user = User.find(session[:user_id])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users }
    end
  end
end
