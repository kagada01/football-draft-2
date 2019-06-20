class PlayersController < ApplicationController

  def index
    @players = Player.all
  end

  def show
    @player = Player.find(params[:id])
  end

  def draft 
  	@player = Player.find(params[:id])
  	@player.update(available: params[:player][:available], my_team_id: params[:player][:my_team_id])
  	redirect_to my_team_path(@self.my_team_id)
  end 






end
