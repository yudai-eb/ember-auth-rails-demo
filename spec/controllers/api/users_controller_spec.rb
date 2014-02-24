require 'spec_helper'

describe Api::UsersController do
  let(:user) { Fabricate(:admin_user) }
  before { user }

  describe 'GET /api/users' do
    context 'unauthorized' do
      before { get :index }

      it 'returns http 401' do
        response.response_code.should == 401
      end
    end

    context 'authorized' do
      before do
        user.ensure_authentication_token!
        get :index, auth_token: user.authentication_token
      end
      subject { JSON.parse response.body }

      it 'usersがresponseに含まれる' do should include 'users' end

      it 'returns http 200' do
        response.response_code.should == 200
      end
    end
  end

  describe 'GET /api/users/:id' do
    context 'unauthorized' do
      before { get :show, id: user.id }

      it 'returns http 401' do
        response.response_code.should == 401
      end
    end

    context 'authorized' do
      before do
        user.ensure_authentication_token!
        get :show, id: user.id, auth_token: user.authentication_token
      end
      subject { JSON.parse response.body }
      it 'userがresponseに含まれる' do should include 'user' end

      context 'inside user' do
        subject { JSON.parse(response.body)['user'] }
        it { should include 'id' }
        it { should include 'email' }
        it { should include 'param' }
        it { should include 'ability' }
      end

      it 'returns http 200' do
        response.response_code.should == 200
      end
    end
  end
end

