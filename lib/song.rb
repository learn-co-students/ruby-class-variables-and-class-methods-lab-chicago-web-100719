class Song

  @@count = 0
  @@artists = []
  @@genres = []

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << @artist
    @@genres << @genre
  end

  def self.count
    return @@count
  end

  def self.artists
    return @@artists.uniq
  end

  def self.genres
    return @@genres.uniq
  end

  def self.artist_count
    artist_count = {}
    @@artists.each do |artist|
      artist_count[artist] = @@artists.count(artist)
    end
    return artist_count
  end

  def self.genre_count
    genre_count = {}
    @@genres.each do |genre|
      genre_count[genre] = @@genres.count(genre)
    end
    return genre_count
  end
  
end