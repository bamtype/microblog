class Watcher < ActiveRecord::Base
	has_many :comments
	has_many :posts

end

 t.string :email,              null: false, default: ""