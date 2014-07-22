class Video < ActiveRecord::Base

	# Validations for content
	validates :artist, presence: true
	validates :description, presence: true
	validates :location, presence: true

	do_not_validate_attachment_file_type :photo
	do_not_validate_attachment_file_type :video

	# Setting
	has_attached_file :video,
										:url => "/assets/videos/:id/:style/:basename.:extension",
										:path => ":rails_root/public/assets/videos/:id/:style/:basename.:extension",
										:processors => [:coverter]
	has_attached_file :photo,
										:url => "/assets/videos/:id/:style/:basename.:extension",
										:path => ":rails_root/public/assets/videos/:id/:style/:basename.:extension"

end
