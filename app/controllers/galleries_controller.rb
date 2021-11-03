class GalleriesController < ApplicationController
    before_action :set_galleries

    def index
        @gallery = Gallery.all.where("title != 'Featured'").order(:title).first()
        if @gallery
            @gallery_height = (@gallery.images.count() / 4) * 700
        end
    end

    def show
        @gallery = Gallery.find_by_slug(params[:id])
    end

    private
    
    def set_galleries
        @galleries = Gallery.all.where("title != 'Featured'").order(:title)
    end
end
