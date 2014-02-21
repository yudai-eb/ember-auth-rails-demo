class Ability < ActiveRecord::Base
  has_many :rolls_abilities
  has_many :rolls, :through => :rolls_abilities
end
