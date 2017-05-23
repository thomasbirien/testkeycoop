class CreateBills < ActiveRecord::Migration[5.0]
  def change
    create_table :bills do |t|
      t.string :customer_name
      t.string :title
      t.string :date_of_publication
      t.float :price
      t.string :reference_bill

      t.timestamps
    end
  end
end
