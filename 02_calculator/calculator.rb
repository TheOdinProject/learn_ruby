def add(num1, num2)
    num1 + num2
end

def subtract(num1, num2)
    num1 - num2
end

def sum(arr)
    arr.inject(0) {|sum, var| sum + var }
end

def multiply(num1, *arr)
    num1 * arr.inject(1) {|total, num| total * num}
end

def power(num, power)
    total = 1
    power.times { total = total * num }

    return total
end

def factorial(num)
    # return 0 if num < 0
    (1..num).inject(1) { |total, num| total * num }
end