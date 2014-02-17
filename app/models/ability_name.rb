class AbilityName < ActiveRecord::Base
  has_many :roll_ability_names
  has_many :rolls, :through => :roll_ability_names
end
