class DashboardController < ApplicationController
  def show
    #@shout = Shout.new
    #@shouts = current_user.timeline_shouts
    @timeline = Timeline.new(current_user)
  end
end