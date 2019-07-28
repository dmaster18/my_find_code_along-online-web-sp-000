require 'pry'

def my_find(collection)
  i = 0 
  while i < collection.length
     return puts collection[i] if yield(collection[i])
    i+=1 
  end
end

collection = (1.100).to_a
my_find(collection) do |i|
  i % 3 == 0 and i % 5 == 0
end