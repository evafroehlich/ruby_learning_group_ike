numbers = [
  [1, 2, 3],
  [4, 5, 6],
  [7, 8, 9]
]

sums = numbers.collect do |array| 
  sum = 0
  array.each {|number| sum = sum + number }
  sum
end

p sums