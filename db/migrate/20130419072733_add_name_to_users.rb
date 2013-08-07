class AddNameToUsers < ActiveRecord::Migration
  def change

    add_column(:users) do |t|
      t.string :user_name
      t.string :first_name
      t.string :last_name
    end
	add_index :users, :user_name,                :unique => true
  end
end
