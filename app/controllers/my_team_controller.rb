class MyTeamController < ApplicationController
    def index
      @my_team = MyTeam.first
      #need to use a different method for selecting my team
      #need to figure out how to do the relationships with My_Team & User
    end

  #Index has everyone on My_Team listed
  #Skateboard: You get added by clicking "Add To Team" button on Player/views/show.html.erb

  #Skateboard: Tells you how many players on your team (at the top)
    #Stretch: Tells you what positions are left that you need to fill***
    ## "You still need a QB, RB, CB" (we can limit this to just offensive players, just a matter of seed data)
    ##This will require logic for checking that each position is present
    ##if we ge this on the My_Team page, we'll want to show it on Players#index

    def destroy
      @my_team
    end

end
