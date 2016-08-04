require 'rails_helper'

RSpec.describe ItemsController, type: :controller do
  include Devise::Test::ControllerHelpers

  before (:each) do
    @user = FactoryGirl.create(:user)
    sign_in @user
  end

  describe "create" do
    it "creates item" do
      expect { post :create, :item => {name: "get food"}, user_id: @user.id }.to change(Item, :count).by(1)
    end
  end

  describe "destroy" do
    it "deletes an item" do
      item = FactoryGirl.create(:item, user_id: @user.id)
      expect { delete :destroy, user_id: @user.id, id: item.id, format: :js}.to change(Item, :count).by(-1)
    end
  end
end
