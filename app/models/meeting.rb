class Meeting < ApplicationRecord
  belongs_to :user
  belongs_to :offer
  has_many :messages
  has_many :reviews
end
