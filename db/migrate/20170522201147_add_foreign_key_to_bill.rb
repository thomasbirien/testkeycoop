class AddForeignKeyToBill < ActiveRecord::Migration[5.0]
  def change
    add_column :bills, :announcement_id, :integer
  end
end
