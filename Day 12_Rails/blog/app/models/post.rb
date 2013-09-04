class Post < ActiveRecord::Base

	
	#validates title is present
	validates :title, :presence => true
end
