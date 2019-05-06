class UsersController < ApplicationController
  def show
    user = User.find(show_params[:id])
    @nickname = current_user.nickname
    @tweets = user.tweets.paginate(page: params[:page], per_page: 4).order("created_at DESC")
  end

  private
  def show_params
    params.permit(:id)
  end
end
