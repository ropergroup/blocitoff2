require 'rails_helper'

RSpec.describe ItemsController, type: :controller do
  #include Devise::Test::ControllerHelpers


   describe "GET #Show" do
      it "assigns the current_user to @user"
         user = create(:user)
         get :show, user_id: user
         expect(assigns(:user)).to eq user
      it "assigns the @user.items to @items"
         user.item = create(:item)
         get :show, id: item
         expect(assigns(:user.items)).to eq items
   end
 end
