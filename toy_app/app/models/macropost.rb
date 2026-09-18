class Macropost < ApplicationRecord
  belongs_to :profile
  validates :content, length: { maximum: 140 }, presence: true
end
