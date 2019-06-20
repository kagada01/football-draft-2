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

    if @my_team == nil
      redirect_to my_team_path(@my_team)
    else
      @player.available = false
      # byebug
      @player.my_team_id = @my_team.id
      @player.save
      redirect_to my_team_path(@my_team)
    end
  end

  # def drop
  #   byebug
  #   @player = Player.find(params[:id])
  #   @user_id = session["user_id"]
  #   @my_team = MyTeam.find_by(user_id: @user_id)
  #   @player.available = true
  #     @player.my_team_id = nil
  #     @player.save
  #     redirect_to my_team_path(@my_team)
  # end


end
