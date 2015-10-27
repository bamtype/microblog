class CreatePuffs < ActiveRecord::Migration
  def change
    create_table :puffs do |t|
      t.integer :post_id
    end
  end
end
