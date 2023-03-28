class AddColumnsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :last_name, :string, null: false
    add_column :users, :first_name, :string, null: false
    add_column :users, :last_name_kana, :string, null: false
    add_column :users, :first_name_kana, :string, null: false
    add_column :users, :post_code, :string, null: false
    add_column :users, :address, :string, null: false
    add_column :users, :is_deleted, :boolean, default: false, null: false
  end
end
