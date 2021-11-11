class Conviction < ApplicationRecord
  belongs_to :crime
  belongs_to :criminal
  validates :crime, uniqueness: { scope: :criminal }
end
