# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Player.destroy_all
DefPlayer.destroy_all
OffPlayer.destroy_all
MyTeam.destroy_all
User.destroy_all

user_1 = User.create!(username: "2daysweb", password: "pw1")
user_2 = User.create!(username: "kagada01", password: "pw2")
user_3 = User.create!(username: "testguy01", password: "pw3")

team_1 = MyTeam.create!(team_name: "SahNoNoNoLosses", user_id: user_1.id)
team_2 = MyTeam.create!(team_name: "gopats", user_id: user_2.id)
# byebug
d_player_1 = DefPlayer.create!(name: "Patrick Peterson", hometown: "Fort Lauterdale, FL",
  college: "LSU", available: true, nfl_team: "Arizona Cardinals", position: "CB", sacks: 10,
  def_interceptions: 5, tackles: 90, fumble_rec: 2, my_team_id: team_1.id)
d_player_2 = DefPlayer.create!(name: "Derek Brooks", hometown: "Pensacola, FL",
  college: "FSU", available: true, nfl_team: "Tampa Bay Bucaneers", position: "DB",
  sacks: 5, def_interceptions: 4, tackles: 100, fumble_rec: 1, my_team_id: team_2.id)
d_player_3 = DefPlayer.create!(name: "Jalen Ramsey", hometown: "Smyrna, TN",
  college: "FSU", available: true, nfl_team: "Jacksonville Jaguars", position: "CB",
  sacks: 14, def_interceptions: 9, tackles: 110, fumble_rec: 4, my_team_id: team_1.id)

o_player_1 = OffPlayer.create!(name: "Julian Edelman", hometown: "Redwood City, CA",
  college: "Kent State", available: true, nfl_team: "New England Patriots", position: "WR",
  tds: 9, rush_yds: 100, receptions: 8, pass_yds: 0, off_int: 0, fumbles: 2, my_team_id: team_1.id)
o_player_2 = OffPlayer.create!(name: "Cam Newton", hometown: "Atlanta, GA",
  college: "Auburn", available: true, nfl_team: "Carolina Panthers", position: "QB",
  tds: 30, rush_yds: 300, receptions: 0, pass_yds: 3000, off_int: 20, fumbles: 1, my_team_id: team_2.id)
o_player_3 = OffPlayer.create!(name: "LeGarrette Blount", hometown: "Madison, FL",
  college: "Oregon", available: true, nfl_team: "Detroit Lions", position: "RB",
  tds: 20, rush_yds: 2000, receptions: 6, pass_yds: 0, off_int: 0, fumbles: 10, my_team_id: team_1.id)
o_player_4 = OffPlayer.create!(name: "Saquon Barkley", hometown: "Bronx, NY",
    college: "Penn State", available: false, nfl_team: "New York Giants", position: "RB",
    tds: 11, rush_yds: 1307, receptions: 91, pass_yds: 0, off_int: 0, fumbles: 10, my_team_id: team_1.id)

league_1 = League.create!(league_name: "Champions League")
league_2 = League.create!(league_name: "Somali Cup")

league_user_1 = LeagueUser.create!(user_id: user_1.id, order: 2, league_id: league_1.id)
league_user_2 = LeagueUser.create!(user_id: user_2.id, order: 1, league_id: league_1.id)
