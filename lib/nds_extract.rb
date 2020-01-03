$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  total_gross = 0
  counter = 0
  while counter < director_data[:movies].length do
    total_gross += director_data[:movies][counter][:worldwide_gross]
    total_gross.to_i
    counter += 1
  end
  return total_gross
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)

  result = {

  }

  counter = 0
  while counter < nds.length do
    grand_total = 0
    grand_total += gross_for_director(nds[counter])
    result[nds[counter][:name]] = grand_total
    counter +=  1
  end
  return result
end
