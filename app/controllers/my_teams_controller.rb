class MyTeamsController < ApplicationController
  
  def index
      @user_id = session["user_id"]
      byebug 
      @username = User.find(@user_id).username
      @my_team = MyTeam.find_by(user_id: @user_id)
  end

  def new
      @my_team = MyTeam.new
  end

  def create  
      @my_team = MyTeam.new(my_team_params)
      @my_team.user_id = session["user_id"]
      @my_team.save
      redirect_to my_teams_path(@my_team)
  end

  def destroy
      @my_team.destroy
      redirect_to "Login", login_path
  end

  private 

  def my_team_params
      params.require(:my_team).permit(:team_name)
  end 

end 



