class Criminal < ApplicationRecord
  belongs_to :prison
  has_many :convictions, dependent: :destroy
  # yann.convictions
  has_many :crimes, through: :convictions
  # yann.crimes
  validates :name, presence: true, uniqueness: true
end
