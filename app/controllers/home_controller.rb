class HomeController < ApplicationController
  def index
    @gallery = Gallery.find_by(title: 'Featured')
  end
end
