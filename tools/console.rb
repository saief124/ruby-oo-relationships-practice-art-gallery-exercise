require_relative '../config/environment.rb'
#Artists

a=Artist.new("Leonardo Da Vinci", 50)
b=Artist.new("Michaelangelo", 20)
c=Artist.new("Sandro Botticelli", 39)

#Gallery

one=Gallery.new("Galleria", "Houston")
two=Gallery.new("Arts Museum", "Austin")
three=Gallery.new("UT Austin Arts and Commerce", "Austin")
four=Gallery.new("Rice University Arts Center", "Houston")

#Painting

monalisa = Painting.new("Mona-Lisa", 2000, a, two)
the_birth= Painting.new("The Birth of Venus", 500, b, two)
pant= Painting.new("Boring Painting", 10, c, three)
garfiel= Painting.new("Im a Cat", 25, a, three)

binding.pry

puts "Bob Ross rules."
