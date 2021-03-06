require 'voyeur'

module Paperclip
  class Converter < Processor

    attr_accessor :video, :photo

    def initialize(file, options = {},attachment = nil)
      super
      @file = file
      @basename = File.basename(@file.path, File.extname(@file.path))
    end

    def make
      Voyeur::Media.new( filename: @file ).convert_to_html5
      @file
    end

  end
end