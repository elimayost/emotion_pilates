class Workout < ActiveRecord::Base

	# paperclip settings
	has_attached_file :mp3_intro, :path => "#{Rails.root}/public/uploads/mp3s/:basename.:extension"

	# paperclip validation
	validates_attachment_size :mp3_intro, :less_than => 5.megabytes, :message => "must be smaller than 5Mb"
	validates_attachment_content_type :mp3_intro, :content_type => 'audio/mpeg', :message => "is invalid (must be MP3 file)"

  validates :title, :presence => true
  validates :description, :presence => true

end

