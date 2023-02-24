# KATA

# A function that outputs a square of every digit integer input and concatenate them. 
# For example, if we run 9119 through the function 811181 should be the output, 
# because 9 squared is 81 and 1 squared is 1(81-1-1-81).

# In order to achieve this, we should have a ruby method, that converts a number to an array of digits, 
# square each digit, then join the squared digits together as a string, then 
# convert the string back to an integer as output.

# require 'pry'
def square_and_concatenate_digits(num)
      # Convert the number to an array of digits, square each digit, 
      # then join the squared digits together as a string

     squared_digits_string = num.to_s.chars.map {|digit| (digit.to_i ** 2).to_s}.join('')

      # Convert the string back to an integer
     squared_digits_string.to_i
end

# binding.pry

# puts square_and_concatenate_digits(9119) # Output: 811181
# puts square_and_concatenate_digits(765) # Output: 493625

puts square_and_concatenate_digits(90867)  #810643649
  
#the square_and_concatenate method method accepts an integer as an arguement.
# num.to_s converts the integer arguement to a string to make it easier to split it into individual digits.

# chars returns an array of the individual characters in the string

# We square each digit by calling 'digit.to_i ** 2' and convert the result back to a string with 'to_s'

# 'join('')'concatenates all the elements of the array into a single string, with no separator between them

# 'to_i' converts the resulting string back to an integer