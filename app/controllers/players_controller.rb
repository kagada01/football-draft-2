class PlayersController < ApplicationController

  def index
    @players = Player.all
  end

  def show
    @player = Player.find(params[:id])
  end

def add_player 
end 

 def drop_player 
 end 





end
