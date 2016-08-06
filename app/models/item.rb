class Item < ApplicationRecord
  belongs_to :user



  def expired_at
    expire_at - (DateTime.current.to_date - created_at.to_date).to_i
  end
end
