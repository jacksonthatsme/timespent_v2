class SiteController < ApplicationController
  def index
  	@videos = Video.all
  end
end
