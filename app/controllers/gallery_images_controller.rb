class GalleryImagesController < ApplicationController
    def destroy
        gallery = Gallery.find(params[:gallery_id])
        image = gallery.images.find(params[:id])
        image.purge
        redirect_to admin_gallery_path(gallery)
    end

    def sort_images
        params[:attachment].each_with_index do |id, index|
          ActiveStorage::Attachment.where(id: id).update_all(position: index + 1)
        end
      
        head :ok
    end
end
