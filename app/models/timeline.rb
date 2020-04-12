class Timeline
  def initialize(users, scope = Shout) # dependency injection
    @users = users
    @scope = scope
  end

  def shouts
    scope.where(user_id: users).
          order(created_at: :desc)
  end

  def to_partial_path
    "timelines/timeline"
  end

  private

  attr_reader :users, :scope

  def timeline_ids
    user.followed_user_ids + [user.id]
  end

end