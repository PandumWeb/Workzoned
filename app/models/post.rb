class Post < ActiveRecord::Base
	belongs_to :user
	validates :title, presence: true, length:{minimum:5}
	validates :body, presence: true
	belongs_to	:category
end
