class AddExpToItems < ActiveRecord::Migration[5.0]
  def change
    add_column :items, :exp, :integer
  end
end
