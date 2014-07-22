module Paperclip
	class Converter < Processor

		attr_accessor :video, :photo

		def initialize
			def convert_video_command
				Voyeur::Media.new( filename: path_to_file ).convert_to_html5
			end
		end

	end
end