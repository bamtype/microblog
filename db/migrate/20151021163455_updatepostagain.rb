class Updatepostagain < ActiveRecord::Migration
  def change
  	add_column :posts, :watcher, :string
  end
end
