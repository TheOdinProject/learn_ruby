#write your code here
def echo texto
    texto
end

def shout texto
    texto.upcase
end

def repeat (texto,cant=2)
    cadena = texto + " "
    (cadena * cant).strip
end

def start_of_word texto,cant
    texto.slice(0,cant)
end

def first_word texto
    texto.split(" ")[0]
end

def titleize texto
    titulo = ""
    texto.split(" ").each_with_index do |x,ind|
        if ind == 0
            titulo = titulo + x.capitalize
        else   
            if x != "and" and x != "over" and x != "the" and ind != 0 
                titulo = titulo + " " + x.capitalize.to_s
            else
                titulo = titulo + " " + x
            end
        end
    end
    (titulo).strip
end