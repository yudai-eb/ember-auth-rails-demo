class Roll < ActiveRecord::Base
  has_many :roll_ability_names
  has_many :ability_names, :through => :roll_ability_names
  has_one :user
end
