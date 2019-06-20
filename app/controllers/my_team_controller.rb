class MyTeamController < ApplicationController
  def index
      @user_id = session["user_id"]
      @my_team = MyTeam.find_by(user_id: @user_id)
  end

  def new
    @my_team = MyTeam.new
  end

  def create
    @my_team = MyTeam.find(params[:team_name])
    @my_team.user_id = session["user_id"]
    @my_team.save
    redirect_to my_team_path
  end

  def destroy
    @my_team.destroy
    redirect_to "Login", login_path
  end




end
