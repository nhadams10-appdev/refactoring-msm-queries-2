# == Schema Information
#
# Table name: characters
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  actor_id   :integer
#  movie_id   :integer
#
class Character < ApplicationRecord
  # def movie
  #   my_movie_id = self.movie_id

  #   matching_movies = Movie.where({ :id => my_movie_id })

  #   the_movie = matching_movies.at(0)

  #   return the_movie
  # end

  belongs_to(:movie, {
      :class_name => "Movie",
      :foreign_key => "movie_id",
      :required => false
  })

  # def actor
  #   the_foreign_key = self.actor_id

  #   matching_records = Actor.where({ :id => the_foreign_key })

  #   the_record = matching_records.at(0)

  #   return the_record
  # end

  belongs_to(:actor, {
    :class_name => "Actor",
    :foreign_key => "actor_id",
    :required => true
  })

end
