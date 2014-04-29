require 'spec_helper'

describe Recipe do
  subject { FactoryGirl.create(:recipe) }
  let(:recipe) { FactoryGirl.create(:recipe) }

  it 'should be valid when given valid attributes' do
    subject.should be_valid
  end

  describe 'user' do

    it 'should have a user' do
      subject.user_id = nil
      subject.should_not be_valid
    end

  end

end
