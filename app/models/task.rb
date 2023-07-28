class Task < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true


  scope :recent_first, -> { order(created_at: :desc) }
end
