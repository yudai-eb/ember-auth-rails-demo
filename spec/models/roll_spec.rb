require 'spec_helper'

describe Roll do
  describe 'リレーションシップ' do
    it { should have_many(:abilities).through(:rolls_abilities) }
    it { should have_one(:user) }
  end
end
