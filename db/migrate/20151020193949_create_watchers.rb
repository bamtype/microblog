class CreateWatchers < ActiveRecord::Migration
  def change
    create_table :watchers do |t|
      t.string :username
      t.string :fname
      t.string :lname
      t.string :password
      t.string :email

      t.timestamps null: false
    end
  end
end
