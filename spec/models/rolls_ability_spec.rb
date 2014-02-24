require 'spec_helper'

describe RollsAbility do
  describe 'リレーションシップ' do
    it { should belong_to(:roll) }
    it { should belong_to(:ability) }
  end
end
