class Roll < ActiveRecord::Base
  has_many :rolls_abilities
  has_many :abilities, :through => :rolls_abilities
  has_one :user
end
