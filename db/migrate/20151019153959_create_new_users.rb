class CreateNewUsers < ActiveRecord::Migration
  def change
    create_table :new_users do |t|
      t.string :log_in
      t.string :sign_up

      t.timestamps null: false
    end
  end
end
