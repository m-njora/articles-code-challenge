class Author
    #A name cannot be changed after it is initialized.thats why we use attr_reader

    attr_reader :name

    #An author is initialized with a name, as a string.

    def initialize(name = "Bob Ross")
        @name = name
    end
end
author = Author.new
#author.name ="Lily"

#p author.name