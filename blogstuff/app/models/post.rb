class Post < ActiveRecord::Base
	has_many :feeds
	has_many :tags, :through => :feeds
	has_many :comments
end
