require 'spec_helper'

describe 'User Management' do
  let(:user_attributes) { FactoryGirl.attributes_for(:user) }
  let(:invalid_attributes) { FactoryGirl.attributes_for(:user, password: "p") }

  describe 'creating a user' do

    context 'with valid attributes' do
      it 'should create and login user' do
        get '/signup'

        expect(response).to render_template(:new)

        expect{
          post '/users', user: user_attributes
          }.to change{ User.count }.by(1)

        controller.current_user.should_not eq(nil)

        expect(response).to redirect_to(assigns(:user))
        follow_redirect!

        expect(response).to render_template(:show)
      end
    end

    context 'with invalid attributes' do
      it 'should not create user and render new template' do
        get '/signup'

        expect(response).to render_template(:new)

        expect{
          post '/users', user: invalid_attributes
          }.to change{ User.count }.by(0)

        controller.current_user.should eq(nil)

        expect(response).to render_template(:new)
      end
    end
  end
end