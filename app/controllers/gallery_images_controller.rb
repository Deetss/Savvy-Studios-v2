class GalleryImagesController < ApplicationController
    def destroy
        gallery = Gallery.find(params[:gallery_id])
        image = gallery.images.find(params[:id])
        image.purge
        redirect_to admin_gallery_path(gallery)
    end
end
