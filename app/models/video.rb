class Video < ActiveRecord::Base

	# Validations for content
	validates :artist, presence: true
	validates :description, presence: true
	validates :location, presence: true

	mount_uploader :video, VideoUploader

end
