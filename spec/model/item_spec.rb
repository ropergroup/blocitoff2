require 'rails_helper'

RSpec.describe Item, type: :model do
  let(:user) { FactoryGirl.create :user }
  let(:item) { FactoryGirl.create :item }

  it { is_expected.to belong_to(:user) }

  describe "attributes" do
    it "has name and exp attributes" do
      expect(item).to have_attributes(name: item.name)
      expect(item).to have_attributes(exp: item.exp)
    end
  end
end
