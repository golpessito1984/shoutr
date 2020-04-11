module UserHelper
  def follow_button(user)
    if current_user.following?(user)
      button_to "Unfollow", follow_user_path, method: :delete
    else
      button_to "Follow", follow_user_path, method: :post
    end

  end
end