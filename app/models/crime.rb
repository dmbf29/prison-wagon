class Crime < ApplicationRecord
  has_many :convictions
  validates :name, presence: true, uniqueness: true

  def to_label
    name.capitalize
  end
end


# list = List.find_by(name: "Classics")
# list.destroy # also destroy all of the bookmarks for this list

# movie = Movie.find_by(name: "Titanic")
# movie.destroy # not allow the destroy if the movie is in a list
