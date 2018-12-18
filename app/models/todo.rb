class Todo < ApplicationRecord
  validates :title, :description, :priority_level, presence: true

  def self.prioritize
    levels, result = self.pluck(:priority_level), Hash.new(0)
    levels.each_with_object(result) { |level,count| count[level] += 1 }
    result.select { |k,v| v > 1 }.sort_by { |k, v| k }.reverse
  end
end
