class AddRoleToUsers < ActiveRecord::Migration
  def change
    add_column :users, :role, :integer, limit: 1, default: 0
  end
end
