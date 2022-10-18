class Movie < ActiveRecord::Base
 def self.find_all_movies_by_year(year)
    Movie.where(year: year)
 end
 def self.create_with_title(title)
    new_movie = Movie.create(title: title)
 end

 def self.first_movie
    self.first
 end

 def self.last_movie
    self.last
 end
 def self.movie_count
    self.count
 end
 def self.find_movie_with_id(id)
    self.find(id)
 end
 def self.find_movie_with_attributes(att)
    self.find_by(att)
 end
 def self.find_movies_after_2002
    self.where("release_date > '2002'")
 end

 def update_with_attributes(attributes)
    self.update(attributes)
 end
 def self.update_all_titles(title)
    Movie.update(title: title)
 end
 def self.delete_by_id(id)
    to_delete = Movie.find(id)
    to_delete.destroy
 end
 def self.delete_all_movies
    Movie.destroy_all
 end
end