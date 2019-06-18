class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string :name
      t.string :hometown
      t.string :college
      t.boolean :available
      t.string :nfl_team
      t.string :type
      t.string :position
      t.integer :sacks
      t.integer :def_interceptions
      t.integer :tackles
      t.integer :fumble_rec
      t.integer :tds
      t.integer :rush_yds
      t.integer :receptions
      t.integer :pass_yds
      t.integer :off_int
      t.integer :fumbles
      t.integer :my_team_id

      t.timestamps
    end
  end
end
