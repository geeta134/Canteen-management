require 'rails_helper'
require 'spec_helper'

RSpec.describe Card1sController, type: :controller do
  before(:each) do
  	#@user = FactoryBot.create(:user)
  	#@card1 = FactoryBot.create(:card1)
  	#sign_in(@user)
end

describe 'GET index' do
	let(:user) { build :user }
	let(:card1) { build :card1 }
    it 'assigns card1s' do
    debugger
      get :index
      expect(response).to be_successful
    end

    it 'renders the index template' do
      get :index
      expect(response).to render_template('index')
    end

    it 'renders the status code ok' do
      expect(response).to have_http_status(:ok)
    end
  end

  describe 'POST create' do
    it 'should accept the params in html format' do
       post :create, params: { card1: { amount: '3000' 
       }, 
       #format: :turbo_stream 
     }
     expect(response.media_type).to eq('text/html')
     expect(response.content_type).to eq('text/html; charset=utf-8')
    end 
  end
end