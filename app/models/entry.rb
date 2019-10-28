class Entry < ApplicationRecord

  # STATUS_VALUES = %w()

  validates :title, presence: true, length: {maximum: 100 }
  validates :body, :posted_at, presence: true
  # validates: status, inclusion: {in: STATUS_VALUES}
end
