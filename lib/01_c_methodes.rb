def launch_menu_crypto()
  puts "Tapez le numero de la fonction que vous souhaitez utiliser:"
  puts "1 - Renvoie la ou les crypto qui ont la plus grosse valeur"
  puts "2 - Renvoie la ou les crypto qui ont la plus petite valeur"
  puts "3 - Renvoie les devises dont le cours est inférieur à 6000"
  puts "4 - Renvoie la devise la plus haute sous les 6000."
  puts "quit - Quitter le programme"
end

#--0- Creation de my_hash
def make_my_hash(liste1,liste2)
  my_hash = {}
  liste1.each_with_index {|currency , i| my_hash[currency] = liste2[i] }
  return my_hash
end

#--1- Crypto au plus grand prix
def highest_price (hash_)
  max_price =  hash_.max_by {|key,value| value.to_f }.last
  puts "Les crypto au plus haut prix sont : #{hash_.select {|key,value| value == max_price}.keys.join(", ")} avec un prix de #{max_price}"
end

#--2- Crypto au plus petit prix
def lowest_price (hash_)
  min_price = hash_.min_by {|key,value| value.to_f }.last
  puts "Les crypto au plus haut prix sont : #{hash_.select {|key,value| value == min_price}.keys.join(", ")} avec un prix de #{min_price}"
end

#--3- Devises aux cours < 6000
def sub_6000 (hash_)
  return hash_sub_6000 = hash_.keep_if{|key,value| value.to_f < 6000}
end

#--4- Max price devises aux cours < 6000
def max_sub_6000 (hash_)
  max_sub_6000_hash = hash_.max_by{|key,value|value.to_f }
  puts "Sous les 6000, la devise la plus élevée est #{max_sub_6000_hash.first} à #{max_sub_6000_hash.last}"
end