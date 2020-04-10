class GalleriesController < ApplicationController
    before_action :set_galleries

    def index
        @gallery = Gallery.find_by(title: 'Featured')
    end

    def show
        @gallery = Gallery.find(params[:id])
    end

    private
    
    def set_galleries
        @galleries = Gallery.all
    end
end
