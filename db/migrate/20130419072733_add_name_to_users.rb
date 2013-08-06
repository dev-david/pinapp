class AddNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :user_name, :first_name, :last_name, :string
  end
end
