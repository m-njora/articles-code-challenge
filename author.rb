class Author
    attr_reader :name

    def initialize(name = "Ruby on Rails")
        @name = name
    end
end
author = Author.new
