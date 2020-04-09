class ShoutsController < ApplicationController
  def create
    shout = current_user.shouts.create(shout_params)
    redirect_to root_path, redirect_options_for(shout)
  end

  private

  def shout_params
    params.required(:shout).permit(:body)
  end

  def redirect_options_for(shout)
    if shout.persisted?
      { notice: "Shouted successfully." }
    else
      { alert: "Could not shout." }
    end
  end

end