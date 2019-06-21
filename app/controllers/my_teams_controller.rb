class MyTeamsController < ApplicationController
  
  def index
      @user_id = session["user_id"]
      @my_team = MyTeam.find_by(user_id: @user_id)
  end

  def new
    @my_team = MyTeam.new
  end

  def create
    @my_team = MyTeam.new
    @my_team.team_name = params["my_team"]["team_name"]
    @my_team.user_id = session["user_id"]
    @my_team.save
    redirect_to my_teams_path(@my_team)
  end

  def destroy
    @my_team.destroy
    redirect_to "Login", login_path
  end

end 



