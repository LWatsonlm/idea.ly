class Post < ApplicationRecord
  has_many :comments, dependent: :destroy
  belongs_to :user
  validates :title, presence: true, length: { minimum: 4 }
  validates :topic, presence: true
  acts_as_votable
end
