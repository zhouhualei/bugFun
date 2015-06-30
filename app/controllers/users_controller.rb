class UsersController < ApplicationController
  def index
  end

  def show

    @tab = params[:tab] || "fixed"

    @user = User.find(params[:id])
    @bugs = []
    @submitted = Bug.submited_by(@user)
    @fixed = Bug.fixed_by(@user)
    @followed = @user.followings
    @favorited = @user.bookmarkings
    @user_score = @fixed.collect{|b| b.score}.sum

    if(@tab == "fixed")
      @bugs = @fixed
    elsif(@tab == "followed")
      @bugs = @followed
    elsif(@tab == "favorited")
      @bugs = @favorited
    end
  end
end
