class ShoutsController < ApplicationController
  before_action :require_login

  def index
    @shout = Shout.new
    @shouts = Shout.all
  end

  def create
   # Shout.create(user_id: current_user.id, body:params[:shout][:body])
    current_user.shout.create(shout.params)
    redirect_to shouts_path
  end

  private
  def shout_params
    params.require(:shout).permit(:body)
  end
end
