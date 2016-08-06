class AddExpireAtToItems < ActiveRecord::Migration[5.0]
  def up
    add_column :items, :expire_at, :integer
  end
end
