class Tag < ApplicationRecord
  has_many :tags_users
  has_many :users, through: :tags_users
end
