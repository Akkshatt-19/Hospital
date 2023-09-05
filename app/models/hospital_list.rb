class HospitalList < ApplicationRecord
    has_many :test_centers
    def self.ransackable_attributes(auth_object = nil)
        ["created_at", "id", "location", "name", "updated_at"]
    end
    def self.ransackable_associations(auth_object = nil)
        ["test_centers"]
    end
end
