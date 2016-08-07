namespace :todo do
  desc "Delete items that are over due"
  task delete_items: :environment do
    Item.all.each do |item|
      if (item.created_at.to_date + item.exp) < Time.now.to_date
        item.destroy
      end
    end
  end
end
