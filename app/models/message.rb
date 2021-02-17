class Message < ApplicationRecord
  belongs_to :meeting
  has_many :users
end
