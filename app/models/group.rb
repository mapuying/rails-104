class Group < ApplicationRecord
  belongs_to :user
  has_many :posts
  has_many :groups_relationships
  has_many :members, through: :groups_relationships, source: :user
  validates :title, presence: true
end
