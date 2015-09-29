class Comic < ActiveRecord::Base
	has_many :comic_chapters
	has_many :carriages
	has_many :magazines, through: :carriages
end
