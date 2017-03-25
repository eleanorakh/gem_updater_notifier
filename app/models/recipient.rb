class Recipient < ApplicationRecord
  validates :email, presence: true, length: { maximum: 255 }
  validates :gem, presence: true, length: { maximum: 255 }
  validates_format_of :email, with: /@/
end
