def ftoc(fahrenheit)
  ((fahrenheit - 32) / 1.8).round
end

def ctof(celsius)
  (celsius * 1.8).round(1) + 32
end
