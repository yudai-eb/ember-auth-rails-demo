require 'spec_helper'

describe User do
  let(:administrator) { Fabricate(:admin_user) }
  before { administrator }

  let(:veteran) { Fabricate(:user_has_many_rolls) }
  before { veteran }

  describe "バリデーション" do
    it { should validate_presence_of :email }
  end

  describe "リレーションシップ" do
    it { should belong_to(:roll) }
  end

  describe "#get_abilities" do
    context "ロールが取得できる" do
      subject { administrator.get_abilities }
      it { should include 'admin' }
    end

    context "ロールが複数取得できる" do
      subject { veteran.get_abilities }
      it { should include 'create_user' }
      it { should include 'add_ability' }
    end
  end

  describe "ユーザー権限" do
    describe "#admin?" do
      context "abilityにadminがある" do
        subject { administrator.admin? }
        it { should be_true }
      end

      context "abilityにadminが無い" do
        subject { veteran.admin? }
        it { should be_false }
      end
    end
  end
end

