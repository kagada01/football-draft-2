class Player < ApplicationRecord
  belongs_to :my_team, required: false
end
