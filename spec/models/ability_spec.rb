require 'spec_helper'

describe Ability do
  describe 'リレーションシップ' do
    it { have_many(:rolls).through(:rolls_abilities) }
  end
end
