class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :token_authenticatable

  validates :email, presence: true
  belongs_to :roll

  def get_abilities
    roll.roll_ability_names.map{|i| i.ability_name.ability_name }
  end

  def admin?
    get_abilities.include? 'admin'
  end
end

