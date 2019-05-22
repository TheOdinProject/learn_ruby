def add num1,num2
    num1+num2
end

def subtract num1,num2
    num1-num2
end

def sum arreglo
    acum = 0 
    arreglo.each do |x|
        acum = acum + x
    end
    acum
end

def multiply num1,num2
    num1*num2
end

def power num1,num2
    num1**num2
end

def factorial num
    acum = 1
    # cont = 1
    if num == 0 
        acum
    else
        while num >= 1 
            acum = acum * num
            num = num -1
            
        end
        acum
    end
    
end