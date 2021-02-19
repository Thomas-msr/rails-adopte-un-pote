class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :tags_users, dependent: :destroy
  has_many :tags, through: :tags_users
  has_many :offers
  has_many :meetings
  has_many :messages
  has_many :reviews


  validates :first_name, presence: true
  validates :last_name, presence: true

  after_create :init_tags_users
  after_update :edit_tags_users

  def init_tags_users
    self.init_tags.each do |tag_id|
      TagsUser.create(tag: Tag.find(tag_id), user: self)
    end
  end

  def edit_tags_users
    TagsUser.where(user_id: self.id).destroy_all
    self.init_tags.each do |tag_id|
      TagsUser.create(tag: Tag.find(tag_id), user: self)
    end
  end
  # validates :email, presence: true, uniqueness: true
  # validates :password, presence: true, uniqueness: true
end
