class Patient < ApplicationRecord
  belongs_to :user
  belongs_to :test_center
end
