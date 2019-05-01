class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    @nickname = current_user.nickname
    @tweets = user.tweets.paginate(page: params[:page], per_page: 4).order("created_at DESC")
  end
end
