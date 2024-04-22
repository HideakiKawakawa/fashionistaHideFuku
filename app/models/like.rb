class Like < ApplicationRecord
  belongs_to :cloth
  belongs_to :user
  validates_uniqueness_of :cloth_id, scope: :user_id
end
