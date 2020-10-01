# Given a list of numbers and a number k, return whether any two numbers from the list add up to k

# Method
# args: array, integer
# return: bool
# desc: Returns true if any two numbers from the array add up to k
def addsUp? (arr, k)
  # Block edge cases: empty array, k = 0
 
  # Loop through arr (i)
  # Loop through rest of array (j) 
  # See if arr[i] + arr[j] = k   
  arr.each_with_index do |v, i|  
    j = i
    while j < arr.size
      return true if (v + arr[j] == k)
      j = j + 1
    end
  end

  false
end

# Test cases
arr1 = [1, 2, 3, 4]
arr2 = [10, 15, 3, 7]

puts addsUp?(arr1, 3) == true
puts addsUp?(arr1, 10) == false
puts addsUp?(arr1, 7) == true

puts addsUp?(arr2, 17) == true
