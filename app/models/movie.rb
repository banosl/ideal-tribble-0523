class Movie < ApplicationRecord
  belongs_to :studio
  has_many :movie_actors
  has_many :actors, through: :movie_actors

  def actors_alpha
    actors.order(:name).to_a
  end

  def actors_avg_age
    actors.average(:age).round(0)
  end
end
