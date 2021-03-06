def english_number(number)
  if number < 0
    return "Please enter a number that is positive"
end
  if number == 0
    return "zero"
  end
num_string = ""
ones = ["one","two","three","four", "five", "six", "seven", "eight", "nine"]
tens = ["ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
teens = ["eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "ninteen"]
zillions = [["hundred", 2],["thousand", 3],["million", 6],["billion", 9],["trillion", 12],["quadrillion", 15], ["quintillion", 18], ["sextillion", 21]]

left = number
while zillions.length > 0
  zil_pair = zillions.pop
  zil_name = zil_pair[0]
  zil_base = 10 ** zil_pair[1]
  write = left/zil_base
  left = left - write*zil_base

  if write > 0
    prefix = english_number(write)
    num_string = num_string + prefix + ' ' + zil_name
      if left > 0
      num_string = num_string + ' '
      end
  end
end

write = left/10
left = left - write*10

if write > 0
  if((write == 1 and left > 0))
    num_string = num_string + teens[left-1]
    left = 0
  else
    num_string = num_string + tens[write-1]
  end

  if left > 0
    num_string = num_string + "-"
  end
end

write = left
left = 0

if write > 0
  num_string = num_string + ones[write-1]
end

num_string
end

def bottles

	a = 99
	while a > 2
		puts "#{english_number(a).capitalize} bottles of beer on the wall, #{english_number(a).capitalize} bottles of beer."
		puts "Take one down and pass it around, #{english_number(a-1).capitalize} bottles of beer on the wall."
	a = a - 1

	end

puts "Two bottles of beer on the wall, two bottles of beer!"
puts "Take one down, pass it around, one bottle of beer on the wall!"
puts "One bottle of beer on the wall, one bottle of beer!"
puts "Take one down, pass it around, no more bottles of beer on the wall!"
end
bottles
