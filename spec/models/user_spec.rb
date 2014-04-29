require 'spec_helper'

describe User do

  describe 'email' do

    it 'should have an email' do
      user = User.create(name: "jackie", password: "aaaaaa", password_confirmation: "aaaaaa")
      user.should_not be_valid
    end

    it 'should be in email format' do
      user = User.create(name: "jackie", email: "fake_email",password: "aaaaaa", password_confirmation: "aaaaaa")
      user.should_not be_valid
    end

    it 'should be unique' do
      user_1 = User.create(name: "jackie", email: "jackie@jackie.com",password: "aaaaaa", password_confirmation: "aaaaaa")
      user_2 = User.create(name: "jackie", email: "jackie@jackie.com",password: "aaaaaa", password_confirmation: "aaaaaa")
      user_2.should_not be_valid
    end
  end
end