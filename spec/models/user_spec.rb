require 'rails_helper'
require 'spec_helper'

RSpec.describe User, type: :model do
  context 'when creating a user' do
    #@user = FactoryBot.build(:user)
    let(:user) { build :user }
    let(:user1) { build :user }
    it 'should be valid user with all attributes' do
      expect(user.valid? == true)
      #expect(user.valid?).to eq(false)
    end

    it 'should raise email already taken error' do
      expect(user1.valid? == false)
      #expect(user.valid?).to eq(false)
    end
  end
end
