class CreateOffPlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :off_players do |t|

      t.timestamps
    end
  end
end
