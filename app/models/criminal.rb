class Criminal < ApplicationRecord
  belongs_to :prison
  validates :name, presence: true, uniqueness: true
end
