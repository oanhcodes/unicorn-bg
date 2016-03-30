class FriendshipsController < ActionController::Base

  def create
    user = User.find(params[:user_id])
    friend = User.find(params[:friend_id])
    user.friend_request(friend)
    redirect_to user
  end

  def update
    user = User.find(params[:user_id])
    friend = User.find(params[:friend_id])
    user.accept_request(friend)
    redirect_to user
  end

end
