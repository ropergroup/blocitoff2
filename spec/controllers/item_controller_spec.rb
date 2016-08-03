require 'rails_helper'


describe "new" do
  it "creates item" do
    item_params = (TEST1234)
    expect { post :create, :item => item_params }.to change(Item, :count).by(1)
  end
end
