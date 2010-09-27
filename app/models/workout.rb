class Workout < ActiveRecord::Base

	# paperclip settings
	has_attached_file :mp3_intro, :storage => :s3, :s3_credentials => "#{Rails.root}/config/s3.yml", :path => "mp3s/:style/:id/:filename"
	has_attached_file :mp3_part_one, :storage => :s3, :s3_credentials => "#{Rails.root}/config/s3.yml", :path => "mp3s/:style/:id/:filename"
	has_attached_file :mp3_part_two, :storage => :s3, :s3_credentials => "#{Rails.root}/config/s3.yml", :path => "mp3s/:style/:id/:filename"
	has_attached_file :mp3_part_three, :storage => :s3, :s3_credentials => "#{Rails.root}/config/s3.yml", :path => "mp3s/:style/:id/:filename"
  has_attached_file :mp3_unguided, :storage => :s3, :s3_credentials => "#{Rails.root}/config/s3.yml", :path => "mp3s/:style/:id/:filename"

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

