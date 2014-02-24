require 'spec_helper'

describe Api::PostsController do
  let(:post) { Fabricate(:post) }
  before { post }

  describe 'GET index' do
    before { get :index }
    subject { JSON.parse response.body }

    it 'wraps around posts' do should include 'posts' end
    it_behaves_like 'http code', 200
  end

  describe 'GET show' do
    before { get :show, id: post.id }
    subject { JSON.parse response.body }

    it 'wraps around post' do should include 'post' end
    context 'inside post' do
      subject { JSON.parse(response.body)['post'] }
      it { should include 'id' }
      it { should include 'title' }
      it { should include 'param' }
    end

    it_behaves_like 'http code', 200
  end
end
