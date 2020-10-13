require_relative './painting.rb'

class Artist
  attr_accessor :title, :price
  attr_reader :name, :years_experience, :gallery

  @@all= []
  
  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience

    @@all<<self
  end

  def self.all
    @@all
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end

  def galleries
   all_galleries=[]
    Painting.all.each do |a|
             if a.artist==self
         all_galleries<<a.galleries
       end
     end
  all_galleries.uniq
  end

  def citiies
  #  Painting.galleries.city
  end

  def self.most_prolific
    # xp=[]
    # artist_instance=[]
    # #return instance of artist with highest amount of paintings per year of experience.
    # Painting.all.each do |i|
    #   if i.artist == self
    #     count +=1
    #     xp << i.artist.years_experience
    #     artist_instance << i.artist
    #   end
    #   end
    #   xp
    #   @@artist_instance
   end

end

