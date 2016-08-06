class AddExpireAtToItems < ActiveRecord::Migration[5.0]

def change
  add_column :users, :expire_at, :integer
  end


end
