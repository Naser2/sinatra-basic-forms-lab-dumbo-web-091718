# class Puppy
#
#   attr_reader :name, :age, :breed
#   attr_accessor :name, :age, :breed
#      @@all = []
#
#      def initialize(name, breed, age)
#       @name = name
#       @breed = breed
#       @age = age
#       @@all << self
#       end
#
#       def self.all
#         @@all
#       end
#
# end

class Puppy

   attr_accessor :name, :age, :breed
   
   def initialize(name, breed, age)
    @name = name
    @age = age
    @breed = breed
  end

end
