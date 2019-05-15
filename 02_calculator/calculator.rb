#write your code here

def add (number1, number2)
    erg = number1 + number2
end

def subtract (number1, number2)
    erg = number1 -number2
end

def sum (array)
    erg = 0
    erg = array.inject(0) { |erg, a| erg+a}
end

def multiply(number1, number2, *extra)
    erg = number1 *number2 * extra.reduce(1) {|erg, a| erg *a}
end

def power (number1, number2)
    erg = number1 ** number2
end

def factorial(number)
    erg = 1
    number.times do |n|
        erg = erg * (n+1)
    end
    erg
end
