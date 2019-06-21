class ApplicationController < ActionController::Base

  def drop
      @player = Player.find(params[:id])
      @user_id = session["user_id"]
      @my_team = MyTeam.find_by(user_id: @user_id)
      @player.available = true
      @player.my_team_id = nil
      @player.save
        
      redirect_to my_teams_path(@my_team)
     end
end
