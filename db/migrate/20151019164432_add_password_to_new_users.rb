class AddPasswordToNewUsers < ActiveRecord::Migration
  def change
    add_column :new_users, :email, :string
    add_column :new_users, :password, :string
  end
end
