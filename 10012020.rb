# CHALLENGE 2 (Hard)
# Given an array of integers, return a new array such that each element at index i of the
# new array is the product of all numbers in the original array except the one at i

include Enumerable

# args: arr   
# return: array
# desc: Returns an array where each number is the product of all the numbers in the 
# original array, except the number of that index
def productArray1 (arr)
  # 1. Calculate total product
  # 2. Map original array by dividing each number by the total product  
  total = arr.reduce(:*) 
  arr.map { |v| total/v }
end

def productArray2 (arr)
  # 1. Loop through array
  # 2. Set each number seperatly at 1
  # 3. Calculate total product of array
  arr.each_with_index.map do |v,i| 
    temp_arr = arr.dup
    temp_arr[i] = 1
    temp_arr.reduce(:*) 
  end
end

# Test cases
puts "[1, 2, 3, 4, 5] should equal [120, 60, 40, 30, 24]: #{productArray1 ([1, 2, 3, 4, 5])}"
puts "[3, 2, 1] should equal [2, 3, 6]: #{productArray1 ([3, 2, 1])}"

puts "[1, 2, 3, 4, 5] should equal [120, 60, 40, 30, 24]: #{productArray2 ([1, 2, 3, 4, 5])}"
puts "[3, 2, 1] should equal [2, 3, 6]: #{productArray2 ([3, 2, 1])}"

