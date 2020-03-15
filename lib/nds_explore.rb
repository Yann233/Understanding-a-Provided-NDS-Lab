$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'
# Call the method directors_database to retrieve the NDS

def pretty_print_nds(nds)
  #写了binding.pry再learn=>会导致running停在这里，这时候打nds就可以看到它的具体数据
=begin  [{:name=>"Stephen Spielberg",WhenUsingPpToDisplayComplexDataStructures>)> nds
  :movies=>
   [{:title=>"Jaws",
     :studio=>"Universal",
     :worldwide_gross=>260000000,
     :release_year=>1975},
    {:title=>"Close Encounters of the Third Kind",
     :studio=>"Columbia",
     :worldwide_gross=>135189114,
     :release_year=>1977},
    {:title=>"Raiders of the Lost Ark",
     :studio=>"Paramount",
=end
#nil  =>这个是原来存在的，要把这个改了
  pp nds   # Change the code below to pretty print the nds with pp
  #这边也可以是pp directors_database，因为数据在那个DB里面
end
#######################
def print_first_directors_movie_titles
#it loops over Spielberg’s movies and prints out their names with newlines
  i=0
  while i < directors_database[0][:movies].length do
puts directors_database[0][:movies][i][:title]
    i += 1
  end
end
#DB={:directors=>{
#:movies?
#}
