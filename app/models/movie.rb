class Movie < ActiveRecord::Base

    def self.create_with_title string
        Movie.create(title: string)
    end

    def self.first_movie
        Movie.find(1)
    end

    def self.last_movie
        Movie.last
    end

    def self.movie_count
        Movie.count
    end

    def self.find_movie_with_id id
        Movie.find id
    end

    def self.find_movie_with_attributes hash
        Movie.find_by hash
    end

    def self.find_movies_after_2002
        Movie.where "release_date > 2002"
    end

    def update_with_attributes hash
        update hash
    end

    def self.update_all_titles newTitle
        Movie.update title: newTitle
    end

    def self.delete_by_id id
        movie_to_delete = Movie.find id
        movie_to_delete.delete
    end

    def self.delete_all_movies
        Movie.all.each do |movie|
            movie.delete
        end
    end

end