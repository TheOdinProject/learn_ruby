def add(num1, num2)
    return num1 + num2 
end 

def subtract(num1, num2)
    return num1 - num2 
end

def sum(array)
    if array.length == 0 
        return 0 
    else 
        sum = 0
        array.each do |i|
            sum += i           
        end
        return sum 
    end    
end

