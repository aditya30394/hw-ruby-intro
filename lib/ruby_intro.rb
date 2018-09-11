# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum = 0
  arr.each { |x| sum = sum + x }
  return sum
end

def max_2_sum arr
  if (arr.length == 0)
      return 0
  elsif (arr.length == 1)
      return arr[0]
  else
      arr.sort!
      return arr[arr.length - 1] + arr[arr.length-2]
  end    
end

def sum_to_n? arr, n
  if (arr.length <= 1)
    return false
  else
    arr.sort!
    i = 0
    j = arr.length - 1
    while i < j do
      if ((arr[i]+arr[j])==n)
        return true
      elsif ((arr[i]+arr[j])>n)
        j = j - 1
      else
        i = i + 1
      end
    end  
  end
  return false    
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  if s.length != 0
    str = (s.upcase)[/^[a-zA-z]/,0]
    if str != nil
      return !(str[0] == 'A' || str[0] == 'E' || str[0] == 'I' || str[0] == 'O' || str[0] == 'U')
    end
  end
  return false
end

# https://stackoverflow.com/questions/2339695/how-to-convert-a-string-or-integer-to-binary-in-ruby
def binary_multiple_of_4? s
  if (s.length != 0 && /^[01][01]*/ =~ s)
    num = s.to_i(2)
    return (num % 4 == 0)
  end
  return false
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    if (isbn.length == 0 || price <= 0)
      raise ArgumentError
    end  
    @isbn = isbn
    @price = price
  end
  
  def isbn
    @isbn
  end
  
  def isbn=(new_isbn)
    @isbn = new_isbn
  end  
  
  def price
    @price
  end
  
  def price=(new_price)
    @price = new_price
  end
  
  def price_as_string
    return "$" + ("%.02f" % @price)
  end  
end
