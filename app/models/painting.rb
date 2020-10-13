require_relative './artist.rb'
require_relative './gallery.rb'
class Painting
  attr_accessor :artist, :gallery
  attr_reader :title, :price

  @@all = []

  def initialize(title, price, artist, gallery)
    @title = title
    @price = price
    @artist= artist
    @gallery = gallery

    @@all<<self
  end

  def self.all
    @@all
  end

  def self.total_price
    price_array=@@all.map{|p| p.price}
    total_price= price_array.sum
  end

end
