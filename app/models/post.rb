class Post < ActiveRecord::Base
	has_many :puffs
	belongs_to :watcher
end
