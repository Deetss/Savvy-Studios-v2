class HomeController < ApplicationController
  def index
    @gallery = Gallery.find_by(title: 'Featured')
  end

  def coming_soon
    render "coming_soon"
  end
end
