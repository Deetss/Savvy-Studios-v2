class Gallery < ApplicationRecord
    after_validation :set_slug, only: [:create, :update]
    after_create :process_variants

    has_many_attached :images

    validates_format_of :title, :without => /\A\d/

    def to_param
        self.slug
    end

    private
    def set_slug
        self.slug = title.to_s.parameterize
    end

    def process_variants
        images = self.images.all
        images.each do |img|
            ImageWorker.perform_async(img.id, id)
        end
        
    end
end
