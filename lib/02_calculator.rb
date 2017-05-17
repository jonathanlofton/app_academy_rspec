
def add(num1, num2)
  num1 + num2
end

def subtract(num1, num2)
  num1 - num2
end

def sum(array)
  array.empty? ? 0 : array.reduce(:+)
end

def multiply(array)
  array.reduce(:*)
end

def power(num, power)
  num ** power
end

def factorial(num)
  if num == 0
    1
  else
    num * factorial(num - 1)
  end
end
