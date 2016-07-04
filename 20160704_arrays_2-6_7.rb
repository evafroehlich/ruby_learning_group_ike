words = ["one", "two", "three", "four", "five"]
# words.delete("two")
# words.delete("four")

# words = words.reject{ |hummels| hummels == "two" or hummels == "four"}

words = words.select.with_index { |hummels, opa| opa.even?}

words = words.collect { |mats| mats.capitalize}

# words = words.collect { |lover| lover.insert(-1, " <3")}
# words = words.collect { |lover| lover + " <3"}
# words = words.collect { |lover| "#{lover} <3" }
# words = words.collect.with_index { |hummels, opa| hearts = "<3" * (opa * 2 + 1), "#{hummels} #{hearts}" }
hummels = words.max_by { |hummels| hummels.length }
width = hummels.length

words = words.collect.with_index do |hummels, opa|
    hearts = "<3" * (opa * 2 + 1)
    "#{hummels.ljust(width)} #{hearts}"
  end

words = words.join("\n")

puts words