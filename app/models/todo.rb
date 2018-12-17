class Todo < ApplicationRecord
  validates :title, :description, :priority_level, presence: true

  def self.priority_counts
    list = self.pluck(:priority_level)
    list.each_with_object(Hash.new(0)) do |level,count|
       count[level] += 1
    end.select { |k,v| v >1 }
  end
end
