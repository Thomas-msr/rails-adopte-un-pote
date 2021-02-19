class Review < ApplicationRecord
  belongs_to :user
  belongs_to :meeting

  validates :rating, inclusion: (0..5)
end
