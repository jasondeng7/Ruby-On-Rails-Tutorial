class Profile < ApplicationRecord
  has_many :macroposts
  validates :name, presence: true
  validates :email, presence: true
end
