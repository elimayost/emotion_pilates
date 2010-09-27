class Workout < ActiveRecord::Base

	# paperclip settings
	has_attached_file :mp3_intro, :path => "#{Rails.root}/public/uploads/mp3s/:basename.:extension"
	has_attached_file :mp3_part_one, :path => "#{Rails.root}/public/uploads/mp3s/:basename.:extension"
	has_attached_file :mp3_part_two, :path => "#{Rails.root}/public/uploads/mp3s/:basename.:extension"
	has_attached_file :mp3_part_three, :path => "#{Rails.root}/public/uploads/mp3s/:basename.:extension"
  has_attached_file :mp3_unguided, :path => "#{Rails.root}/public/uploads/mp3s/:basename.:extension"

	# paperclip validation
	validates_attachment_size :mp3_intro, :less_than => 10.megabytes, :message => "must be smaller than 10Mb"
	validates_attachment_content_type :mp3_intro, :content_type => 'audio/mpeg', :message => "is invalid (must be MP3 file)"

  validates_attachment_size :mp3_part_one, :less_than => 10.megabytes, :message => "must be smaller than 10Mb"
	validates_attachment_content_type :mp3_part_one, :content_type => 'audio/mpeg', :message => "is invalid (must be MP3 file)"

  validates_attachment_size :mp3_part_two, :less_than => 10.megabytes, :message => "must be smaller than 10Mb"
	validates_attachment_content_type :mp3_part_two, :content_type => 'audio/mpeg', :message => "is invalid (must be MP3 file)"

	validates_attachment_size :mp3_part_three, :less_than => 10.megabytes, :message => "must be smaller than 10Mb"
	validates_attachment_content_type :mp3_part_three, :content_type => 'audio/mpeg', :message => "is invalid (must be MP3 file)"

	validates_attachment_size :mp3_unguided, :less_than => 10.megabytes, :message => "must be smaller than 10Mb"
	validates_attachment_content_type :mp3_unguided, :content_type => 'audio/mpeg', :message => "is invalid (must be MP3 file)"

  validates :title, :presence => true
  validates :description, :presence => true

end

