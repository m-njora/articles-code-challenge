require 'pry'
class Magazine
    #The name and category of the magazine can be changed after being initialized.

    attr_accessor :name, :category

    @@all = []


        #A magazine is initialized with a name as a string and a category as a string

    def initialize(name = "Vogue Magazine" , category = "British Vougue")
        @name = name
        @category = category
        @@all << self

    end
    def self.all
        @@all

    end
    binding.pry

end

mag1 = Magazine.new

#mag1.name = "True love"
#mag1.category = "fitness"

#p mag1.name
#p mag1.category
