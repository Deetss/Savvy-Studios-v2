class GalleryImagesController < ApplicationController
    def destroy
        gallery = Gallery.find(params[:gallery_id])
        image = gallery.images.find(params[:id])
        image.purge
        redirect_to admin_gallery_path(gallery)
    end

    def sort_images
        params[:attachment].each_with_index do |id, index|
            puts "there should be something after this"
            puts Gallery.with_attached_images.find(params[:gallery_id]).images.where(id: id)
            Gallery.with_attached_images.find(params[:gallery_id]).images.where(id: id).update(position: index + 1)
        end
        head :ok
    end
end
