class NewUser < ActiveRecord::Base
	has_many :posts
	has_many :titles

end
