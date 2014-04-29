require 'spec_helper'

describe User do

  describe 'email' do

    it 'should have an email' do
      user = FactoryGirl.build(:user, email: "")
      user.should_not be_valid
    end

    it 'should be in email format' do
      user = FactoryGirl.build(:user, email: "fake_email")
      user.should_not be_valid
    end

    it 'should be unique' do
      user_1 = FactoryGirl.create(:user, email: "jackie@jackie.com")
      user_2 = FactoryGirl.build(:user, email: "jackie@jackie.com")
      user_2.should_not be_valid
    end
  end
end