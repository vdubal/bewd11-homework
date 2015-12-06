class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :name
      t.string :website
      t.string :book_id

      t.timestamps null: false
    end
  end
end
