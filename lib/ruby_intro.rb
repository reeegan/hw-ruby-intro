# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  # arr.sum
  result = 0
  arr.each{|x| result = result + x}
  result
end

def max_2_sum arr
  # YOUR CODE HERE
  arr2 = arr.sort
  result = 0;
  if arr2[-1] then
    result = arr2.last
    if arr2[-2] then
      result = result + arr2[-2]
    end
  end
  result     
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  arr2 = arr.combination(2)
  arr2.each{|x| return true if x.sum == n}
  false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  'Hello, ' + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  return false if s.empty?
  b = 'qwrtypsdfghjklzxcvbnm';
  arr = b.split('');
  arr.each{|a| return true if s[0].downcase.include? a}  
  false
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  /^(0|00|([01]+00))$/.match?(s)
  
end

# Part 3

class BookInStock
  # YOUR CODE HERE   
  def initialize(a,b)
    raise ArgumentError, 'Empty isbn value' unless a!=''    
    raise ArgumentError, 'Need positive price' unless b > 0
    @isbn = a
    @price = b  
  end
  
  attr_accessor :isbn
  attr_accessor :price

  def price_as_string
    '$%.2f'% [@price]
  end
end
