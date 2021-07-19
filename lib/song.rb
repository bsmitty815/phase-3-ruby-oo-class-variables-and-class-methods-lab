
require "pry"
class Song


    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1 # when a new song is created it increases the count
        @@artists << artist # pushes the new song artist into the artists array when created
        @@genres << genre # pushes the new song genre into the genres array when created
    end

    def self.count #use self so when this method is called it will return the total numer of songs for whats being passed through
        @@count
    end

    def self.artists # using unique method
        @@artists.uniq{|artist| artist} # returns unique artists in an array so no duplicates
    end

    def self.genres # using unique method
        
        @@genres.uniq{|genre| genre}# returns unique genres in an array so no duplicates
    end

    def self.genre_count
        @@genres.tally # tally method returns a hash from an array
    end

    def self.artist_count
        @@artists.tally
    end
    



end