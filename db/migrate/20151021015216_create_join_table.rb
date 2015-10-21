class CreateJoinTable < ActiveRecord::Migration
  def change
    create_join_table :categories, :products do |t|
      t.index [:category_id, :product_id]
      t.index [:product_id, :category_id]
    end
  end
end
