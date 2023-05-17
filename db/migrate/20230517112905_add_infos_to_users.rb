class AddInfosToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :name, :string
    add_column :users, :firstname, :string
    add_column :users, :address, :string
    add_column :users, :tel, :integer
  end
end
