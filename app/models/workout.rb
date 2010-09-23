class Workout < ActiveRecord::Base

	# paperclip settings
	has_attached_file :mp3_intro

  validates :title, :presence => true
  validates :description, :presence => true

end

