class Gallery < ApplicationRecord
    has_many_attached :images

    validates_format_of :name, :without => /^\d/

    def to_param
        title.parameterize
    end

    
    def self.find(input)
        input.to_i == 0 ? find_by_name(input) : super
    end
end
