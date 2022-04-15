

#-----METHODES POUR JOURNALISTS.RB

def launch_menu_journalist ()
  puts "Tapez le numero de la fonction que vous souhaitez utiliser:"
puts "1 - Renvoie le nombre de handle dans la liste"
puts "2 - Renvoie le handle le plus court"
puts "3 - Renvoie le nombre de handle de longueur 5 (sans le @)"
puts "4 - Renvoie le nombre de handle commençant pas une majuscule"
puts "5 - Renvoie la liste de handle par order alphabetique"
puts "6 - Renvoie la liste par ordre de longueur"
puts "7 - Renvoie la position de @epenser"
puts "8 - Renvoie la distribution de longueurs des handles"
puts "quit - Quitter le programme"
end

#--1
def list_length(liste)
  puts "La liste de journalites contient #{liste.length} elements."
end

#--2
def list_shorter(liste)
  puts "Le handle le plus court est #{liste.min {|a,b| a.size <=> b.size}}"
end

#--3
def handle_length_5 (liste)
  puts "Il y a #{liste.count {|handle| handle.size == 6}} handles de longueur 5."
end

#--4
def start_maj (liste)
  puts "Il y a #{liste.count {|handle| handle[1] =~ /[[:upper:]]/}} handles qui commencent par une majuscule."
end

#--5
def alpha_sort (liste)
  puts liste.sort_by(&:downcase)
end

#--6
def size_sort (liste)
  puts liste.sort {|a,b| a.size <=> b.size} 
end

#--7
def epenser_pos (liste)
  puts "@epenser ce situe en position #{liste.find_index("@epenser").to_i > 0 ? liste.find_index("@epenser").to_i : "inexistante"} dans la liste."
end

#--8
def length_distr (liste)
  ((liste.max {|a,b| a.size <=> b.size}).length).times {|char| puts "Il y a #{liste.count {|handle| handle.size == char + 1}} handles de longueur #{char}."}
end
