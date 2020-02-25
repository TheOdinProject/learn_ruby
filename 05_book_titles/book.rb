class Book
    attr_accessor :title

    def initialize
        @title
    end

    def title
        title_ls = @title.split(" ")
        title_ls.map! do |ele|
            if (ele != "and") and (ele != "in") and (ele != "the") and (ele != "of") and (ele != "a") and (ele != "an")
                ele.capitalize
            else
                ele
            end
        end
        title_ls[0] = title_ls[0].capitalize
        title_ls.join(" ")
    end
end
