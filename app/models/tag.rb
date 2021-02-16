class Tag < ApplicationRecord
  has_many :tagsusers
  has_many :users, through: :tagsusers
end
