class StaticPagesController < ApplicationController
  require 'flickraw'
  FlickRaw.api_key=ENV["FLICKRAW_API_KEY"]
  FlickRaw.shared_secret=ENV["FLICKRAW_SHARED_SECRET"]
  def home
    flickr = FlickRaw::Flickr.new
    if params[:id]
      @photos = flickr.photos.search(user_id: params[:id])
    end
  end
end
