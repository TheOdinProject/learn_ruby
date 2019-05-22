def translate texto
    cadena=""
    textoArray = texto.split(" ")
    
    textoArray.each do |x|
        x= pigalize x
        cadena = cadena + x + " "
    end
    cadena.strip
end

def pigalize cade
    while cade.start_with?(/[^aeiou]/i)
        letra = cade.slice!(0)
        cade = cade + letra
    end

    if (cade.start_with?("u")) and (cade.end_with?("q"))
        letra = cade.slice!(0)
        cade = cade + letra
    end

    cade = cade + "ay"
end