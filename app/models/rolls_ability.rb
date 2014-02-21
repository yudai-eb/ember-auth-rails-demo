class RollsAbility < ActiveRecord::Base
  belongs_to :roll
  belongs_to :ability
end
