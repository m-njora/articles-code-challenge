# require_relative "../lib/author.rb"
# require_relative "../lib/magazine.rb"

class Article
    #An article cannot change its author, magazine, or title after it has been initialized.

    attr_reader :author, :magazine, :title

    @@all = []

    #An article is initialized with an author as an Author object, a magazine as a Magazine object, and title as a string.

    def initialize(author, magazine , title )
        @author = author
        @magazine = magazine
        @title = title
        @@all << self
    end


def self.all

    @@all

end
end

#article = Article.new("bob","lifestyle","true love")

#p article.title
#p article.author.name
# p article.magazine.name
# p article.magazine.category
#binding.pry