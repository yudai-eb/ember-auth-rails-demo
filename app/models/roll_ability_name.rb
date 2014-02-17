class RollAbilityName < ActiveRecord::Base
  belongs_to :roll
  belongs_to :ability_name
end
