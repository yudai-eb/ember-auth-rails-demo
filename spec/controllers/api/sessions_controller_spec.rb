require 'spec_helper'

describe Api::SessionsController do
  let(:user) { Fabricate(:admin_user) }

  before { user.ensure_authentication_token! }

  describe 'POST /api/sign_in', '#create' do
    context 'no param' do
      before { post :create }

      it_behaves_like 'http code', 400
    end

    context 'wrong credentials', 'パスワードが異なっている' do
      before { post :create, email: user.email, password: '' }

      it_behaves_like 'http code', 401
    end

    context 'emailとpasswordでの認証' do
      before { post :create, email: user.email, password: user.password }
      subject { JSON.parse response.body }

      it { should include 'user_id' }
      it { should include 'auth_token' }

      it_behaves_like 'http code', 201
    end

    context 'remember_tokenでの認証' do
      it_behaves_like 'auth response' do
        let(:params) do
          user.remember_me!
          data = User.serialize_into_cookie(user)
          token = "#{data.first.first}-#{data.last}"
          { remember_token: token }
        end
      end
    end
  end

  describe 'DELETE /api/sign_out', '#destroy' do
    context 'no param', 'auth_tokenが無い' do
      before { delete :destroy }

      it_behaves_like 'http code', 400
    end

    context 'wrong credentials', 'auth_tokenが無効' do
      before { delete :destroy, auth_token: '' }

      it_behaves_like 'http code', 401
    end

    context 'normal auth token param', 'auth_tokenが有効' do
      before { delete :destroy, auth_token: user.authentication_token }
      subject { JSON.parse response.body }

      it { should include 'user_id' }
      it { should_not include 'auth_token' }

      it_behaves_like 'http code', 200
    end
  end
end

