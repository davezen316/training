class AddDataToUsers < ActiveRecord::Migration
  def change
    add_column :users, :username, :string
    add_column :users, :email, :string
  end
end
