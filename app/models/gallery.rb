require_relative './painting.rb'
class Gallery
  attr_accessor :gallery
  attr_reader :name, :city 

  @@all= []

  def initialize(name, city)
    @name = name
    @city = city
    @@all<<self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select{|g| g.gallery==self} 
  end

  def artists
    all_artist=[]
    Painting.all.each do |g|
      if g.gallery==self
        all_artist<<g.artist
      end
    end
    all_artist.uniq 
  end

  def artist_name
   # self.map do |n|
    #  if n.name}
  end

  def most_expensive_painting
    Painting.self.map do |p|
      p.price.max
    end
  end
  
end
