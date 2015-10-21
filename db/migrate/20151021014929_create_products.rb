class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :sku, limit: 100
      t.string :name, limit: 100
      t.text :description
      t.decimal :price
      t.boolean :published

      t.timestamps null: false
    end
  end
end
