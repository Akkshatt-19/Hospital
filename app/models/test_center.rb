class TestCenter < ApplicationRecord
  belongs_to :hospital_list
  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "hospital_list_id", "id", "location", "updated_at"]
  end
end
