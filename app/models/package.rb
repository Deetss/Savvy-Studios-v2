class Package < ApplicationRecord
    scope :positioned, -> { order("position asc") }

    has_many :rates
    accepts_nested_attributes_for :rates, allow_destroy: true

    validates_uniqueness_of :position
end