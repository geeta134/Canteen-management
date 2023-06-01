require 'rails_helper'
require 'spec_helper'

RSpec.describe UsersController, type: :controller do
	before(:each) do
		@user = FactoryBot.create(:user)
		sign_in(@user)
	end

	describe 'GET index' do
    it 'assigns users' do
      get :index
      expect(response).to be_successful
    end

    it 'renders the index template' do
      get :index
      expect(response).to render_template('index')
    end
  end
end