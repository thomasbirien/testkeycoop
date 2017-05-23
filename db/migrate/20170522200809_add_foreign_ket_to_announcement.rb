class AddForeignKetToAnnouncement < ActiveRecord::Migration[5.0]
  def change
    add_column :announcements, :bill_id, :integer
  end
end
