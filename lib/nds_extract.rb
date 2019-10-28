require 'directors_database'
require 'pp'
require 'pry'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = {}
  name_index = 0
  director = nds[name_index][:name]
  result[director] = 0
  
  while name_index < nds.length do
    results[director] += gross_for_director(gross_total)
  end
  
  p  result
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  mov_index = 0
  gross_total = 0
  while mov_index < director_data[:movies].length do
    gross_total += director_data[:movies][mov_index][:worldwide_gross]
  
    mov_index += 1
  end
  gross_total
end
