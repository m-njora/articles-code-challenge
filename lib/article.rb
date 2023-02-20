require_relative "./author.rb"
require_relative "./magazine.rb"


class Article
    #An article cannot change its author, magazine, or title after it has been initialized.

    attr_reader :author, :magazine, :title
    #An article is initialized with an author as an Author object, a magazine as a Magazine object, and title as a string.

    def initialize(author = Author.new, magazine = Magazine.new, title = "5 Things You Didn't Know about Rihanna")
        @author = author
        @magazine = magazine
        @title = title
    end
end
article = Article.new

p article.title
p article.author.name
p article.magazine.name
p article.magazine.category