class PlayersController < ApplicationController

  def index
    @players = Player.all
  end

  def show
    @player = Player.find(params[:id])
  end

  def draft 
  	@player = Player.find(params[:id])
    @user_id = session["user_id"]
    @my_team = MyTeam.find_by(user_id: @user_id)
  	@player.available = false 
    @player.my_team_id = @my_team.id
    @player.save
  	redirect_to my_team_path(@my_team)
  end 






end
