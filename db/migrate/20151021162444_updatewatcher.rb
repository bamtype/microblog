class Updatewatcher < ActiveRecord::Migration
  def change
  	add_column :posts, :watcher_id, :integer
  end
end
