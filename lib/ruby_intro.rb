# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.sum
end

def max_2_sum arr
  if arr.length == 0; return 0; end
  if arr.length == 1; return arr[0]; end
  arr = arr.sort
  arr[-2..-1].sum
end

def sum_to_n? arr, n
  require "set"
  s = Set.new
  for e in arr
    if
      s.include? e
      return true
    else
      s.add(n-e)
    end
  end
  return false
end

# Part 2

def hello(name)
  "Hello, " + name
end

def starts_with_consonant? s
  s.match(/^[^aeiou]/i) and s.match(/^[a-z]/i)? true : false
end

def binary_multiple_of_4? s
  return true if s == "0"
  s.match(/^[01]*00$/) != nil
end

# Part 3

class BookInStock

  attr_accessor :isbn
  attr_accessor :price
  
  def initialize(isbn, price)
    raise ArgumentError,
     "invalid argument" if isbn.empty? or price<=0
    @isbn = isbn
    @price = price
  end

  def price_as_string
    sprintf("$%2.2f", @price)
  end
end
