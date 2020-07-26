class Package < ApplicationRecord
    has_many :rates
    accepts_nested_attributes_for :rates, allow_destroy: true
end