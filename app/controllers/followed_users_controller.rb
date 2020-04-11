class FollowedUsersController< ApplicationController

  def create
    user_to_follow = find_user
    current_user.follow(user_to_follow)
    redirect_to user_to_follow
  end

  def destroy
    user_to_not_follow = find_user
    current_user.to_not_follow(user_to_not_follow)
    redirect_to user_to_not_follow
  end

  private

  def find_user
    @_user || User.find_by_username(params[:id])
  end

end