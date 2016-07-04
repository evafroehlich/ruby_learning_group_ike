words = ["one", "two", "three", "four", "five"]
# words.delete("two")
# words.delete("four")

# words = words.reject{ |hummels| hummels == "two" or hummels == "four"}

words = words.select.with_index { |hummels, opa| opa.even?}

words = words.collect { |mats| mats.capitalize}
p words