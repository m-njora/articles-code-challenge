#require 'pry'
class Magazine
    #The name and category of the magazine can be changed after being initialized.

    attr_accessor :name, :category

    @@all = []


        #A magazine is initialized with a name as a string and a category as a string

    def initialize(name , category )
        @name = name
        @category = category
        @@all << self

    end
    def self.all
        @@all

    end
    #Returns an array of Author instances who have written for this magazine

    def contributors
        Article.all.map do |article|
             article.magazine.name == self.name
                article.author
            
        end.uniq

    end
    #returns the first magazine object that matches

    def self.find_by_name(name)
        self.all.find do |article|
            article.name.include?(name)
        end
    end
    # returns an array string of the titles of all articles written for that magazine
    def article_titles
        Article.all.map do |art|
            art.magazine == self.name
                art.title
        end
    end
# Returns an array of Author instances who have written for this magazine
def contributors
    Article.all.map do |auth|
        auth.magazine.name == self.name
            auth.author
    end.uniq
end


# Returns an array of authors who have written more than 2 articles for the magazine
def contributing_author
    cont_auth = Article.all.map do |auth|
        auth.magazine.name == self.name
            auth.author
    end

    cont_auth.tally.select do |key, value|
       value > 2
    end
end

end

#mag1 = Magazine.new("True love", "fitness")
#binding.pry
#mag1.name = "True love"
#mag1.category = "fitness"

#p mag1.name
#p mag1.category
