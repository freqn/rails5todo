class Todo < ApplicationRecord
  validates :title, :description, :priority_level, presence: true

  scope :high_sev, -> { where("priority_level > ?", 3) }
end
