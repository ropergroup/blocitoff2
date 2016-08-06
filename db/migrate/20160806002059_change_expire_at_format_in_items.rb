class ChangeExpireAtFormatInItems < ActiveRecord::Migration[5.0]
  def up
    change_column :items, :expire_at, :integer
  end

  def down
    change_column :items, :expire_at, :datetime
  end
end
