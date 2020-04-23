class GalleriesController < ApplicationController
    before_action :set_galleries

    def index
        @gallery = Gallery.all.where("title != 'Featured'").order(:title).first()
    end

    def show
        @gallery = Gallery.find(params[:id])
    end

    private
    
    def set_galleries
        @galleries = Gallery.all.where("title != 'Featured'").order(:title)
    end
end
