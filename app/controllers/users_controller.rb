class UsersController < ApplicationController
  def index
  end

  def show

    @tab = params[:tab] || "fixed"

    username = "Yu Wang"
    @bugs = []
    @submitted = Bug.bugs_submited_by(username)
    @fixed = Bug.bugs_fixed_by(username)
    @followed = Bug.bugs_followed_by
    @favorited = Bug.bugs_favorite_by

    if(@tab == "fixed")
      @bugs = Bug.bugs_fixed_by(username)
    elsif(@tab == "followed")
      @bugs = Bug.bugs_followed_by
    elsif(@tab == "favorited")
      @bugs = Bug.bugs_favorite_by
    end

    p @bugs
  end
end
