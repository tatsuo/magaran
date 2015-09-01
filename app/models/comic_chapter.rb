class ComicChapter < ActiveRecord::Base
	belongs_to :comic
	belongs_to :magazine_volume
end
