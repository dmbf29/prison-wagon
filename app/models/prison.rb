class Prison < ApplicationRecord
  has_many :criminals, dependent: :destroy
  validates :name, presence: true, uniqueness: true
end
