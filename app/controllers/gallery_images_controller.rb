class GalleryImagesController < ApplicationController
    def destroy
        gallery = Gallery.find_by_slug(params[:gallery_id])
        image = gallery.images.find(params[:id])
        image.purge
        redirect_to admin_gallery_path(gallery)
    end

    def sort_images
        respond_to do |format|
            format.json { 
                params[:attachment].each_with_index do |id, index|
                    Gallery.with_attached_images.find_by_slug(params[:gallery_id]).images.where(id: id).update(position: index + 1)
                end
                head :no_content
            }
        end
    end
end
