class Offer < ApplicationRecord
  belongs_to :user
  has_many :meetings
  has_many :likes
end
