class Author
    #A name cannot be changed after it is initialized.thats why we use attr_reader

    attr_reader :name

    @@all = []

    #An author is initialized with a name, as a string.

    def initialize(name)
        @name = name
        @@all << self
    end


    def self.all
        @@all
    end
#Returns an array of Article instances the author has written
    def articles
        Article.all.select do |article|
            article.author == self
        end
    end
#Returns a unique array of Magazine instances for which the author has contributed to

    def magazines
        self.articles.filter do |article|
            article.magazine 
        end.uniq

        
    end

    #creates a new Article instance and associates it with that author and that magazine.
    def add_article(magazine, title)
        Article.new(self, magazine, title)


    end
    #a unique array of strings of topic areas the author has contributed to
    # def topic_areas
    #     self.magazines.map do |mag|
    #         mag.magazine.category
    #     end.uniq
    # end
end
#author = Author.new
#author.name ="Lily"

#p author.name