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
         all_galleries<<a.gallery
      end
     end
  all_galleries.uniq
  end

  def cities
    galleries.map{|c| c.city}
  end

  def self.total_experience
    xp=[]
    @@all.each do |y|
    xp << y.years_experience
    end
    xp.inject{|sum,x| sum+ x}
  end

  def self.most_prolific
    # num_paintings =[]
    # @@all.each do |p|
    # num_paintings << p.years_experience/(p.galleries.count).to_f
    # end
    #num_paintings
  end 

end

