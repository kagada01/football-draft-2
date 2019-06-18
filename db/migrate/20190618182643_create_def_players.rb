class CreateDefPlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :def_players do |t|

      t.timestamps
    end
  end
end
