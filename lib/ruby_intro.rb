# When done, submit this entire file to the autograder.

# Part 1

def sum arr
	return arr.sum
end

def max_2_sum arr
  if arr.length>=2 then
    arr=arr.sort
    return arr[-1]+arr[-2]
  elsif arr.length==1 then
    return arr[0]
  else
    return 0
  end
end

def sum_to_n? arr, n
  if arr.length<2 then
    return false
  else
    for i in 0..arr.length-1
      for j in i+1..arr.length-1
        if arr[i]+arr[j]==n then
          return true
        end
      end
    end
    return false
  end
end

# Part 2

def hello(name)
  return "Hello, "+name
end

def starts_with_consonant? s
  if s.length==0 then
    return false
  end
  if s[0] =~ /[aeiouAEIOU]/
    return false
  end
  if s[0] =~ /[A-Za-z]/ ##I think this is where things are going wrong.
    return true
  else
    return false
  end
end

def binary_multiple_of_4? s
  if s =~ /\A[-+]?[0-9]*\.?[0-9]+\Z/
    if Integer(s).remainder(4)==0
      return true
    else
      return false
    end
  else
    return false
  end
end

# Part 3

class BookInStock 
  attr_accessor :price, :isbn
  def initialize(isbn, price)

    @isbn= isbn.to_s
    @price= price.to_f

    validate!
  end

  def price_as_string
    return "$%0.2f" % [@price]
  end

  private

  def validate!
    raise ArgumentError.new("Price must be greater than zero") unless @price > 0
    raise ArgumentError.new("ISBN should not be empty") unless @isbn!=""
  end
end