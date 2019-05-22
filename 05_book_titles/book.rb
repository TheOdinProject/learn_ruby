class Book
    # def initialize nombre
    #     @title = nombre

    # end
    attr_accessor :title

    def title
        # texto = ""
        # titleArray = @title.split(" ")

        # titleArray.each do |x|
        #     texto = texto + x.capitalize + " "

        # end
        # return texto.strip
        titulo = ""
        @title.split(" ").each_with_index do |x,ind|
        if ind == 0
            titulo = titulo + x.capitalize
        else   
            if x != "and" and x != "over" and x != "the" and x != "in" and x != "of" and x != "a" and x != "an" and ind != 0 
                titulo = titulo + " " + x.capitalize.to_s
            else
                titulo = titulo + " " + x
            end
        end
    end
    (titulo).strip
    end

end
