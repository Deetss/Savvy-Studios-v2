class PackagesRate < ApplicationRecord
    belongs_to :package, class_name: "package", foreign_key: "package_id"
    belongs_to :rate, class_name: "rate", foreign_key: "rate_id"
end
