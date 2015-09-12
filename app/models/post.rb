class Post < ActiveRecord::Base
	searchkick
	belongs_to :user
	validates :title, presence: true, length:{minimum:5}
	validates :body, presence: true
	belongs_to	:category

	has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing2.png"
  	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
