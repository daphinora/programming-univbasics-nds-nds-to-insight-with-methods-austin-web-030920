
$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  movie_index = 0
  director_grosses = 0
  
  while movie_index < director_data[:movies].length do
    director_grosses += director_data[:movies][movie_index][:worldwide_gross]
    movie_index += 1
  end
  director_grosses
end


def directors_totals(nds)
 result = {}
 director_index = 0
 total_gross = 0
    
  while director_index < nds.length do
   director_name = nds[director_index][:name]
   result[director_name] = total_gross
   director_index < directors_database.length
   result[director_name] += gross_for_director(nds[director_index])
  director_index += 1
  end
  result
end

#"Create completely new code," they say. (T-T)
# Okay, in all fairness, creating the first order method
# was actually way easier than last lab's code was tbh

#What I did for the previous lab: 
#def directors_totals(nds)
#   result = {}
#   row_index = 0
#   total_gross = 0
  
#   while row_index < nds.length do
#     counter = 0
#     director_name = nds[row_index][:name]
#     result[director_name] = total_gross
# (creates the hash that will be added to via the key/value pair of director_name/total_gross and then returned at the end with the correct infomation for each director and the total gross accumulated from each of the movies listed in the spec database)
  
#     while counter < nds[row_index][:movies].length do
#     result[director_name] += nds[row_index][:movies][counter][:worldwide_gross]
# (take the gross from each movie of a director and totals them to become the value of the director_name/total_gross key/value pair in the results hash)
#     counter += 1   
# (takes the loop through each movie of the director)
#     end
#     row_index += 1 
# (takes the loop through each director)
#   end
#   result
# (returns the hash with all updated key/value pairs of director_name/total_gross)
# end