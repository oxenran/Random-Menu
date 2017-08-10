adjectives = [ "smothered", "ambrosial", "epicurean", "balsamic", "fra diavolo",
  "etoufee", "alfredo", "caramelized", "marinated", "honeyed" ]

cooking_method = [ "sous vide", "fried", "roasted", "steamed", "sauteed",
    "grilled", "smoked", "poached", "confit", "simmered"]

food_type = ["rack of lamb", "salmon", "chicken breast", "pork tenderloin",
  "root vegetable chutney", "filet mignon", "duck", "flank steak", "hamburger",
  "broccolini" ]
# write menu parts: food_type, cooking_method, adjectives

# make a numbered list of menu items with a sample of each array
puts "How many menu items would you like to see? \n (up to 10)"
quest = gets.chomp.to_i

menu_du_jour = cooking_method.shuffle.zip(adjectives.shuffle, food_type.shuffle)


num = 1
quest.times {
  plate_du_jour =  menu_du_jour[num - 1]
  puts "#{num}. #{plate_du_jour[0].capitalize} #{plate_du_jour[1].capitalize} #{plate_du_jour[2].capitalize}"
  num += 1
}


answer = ""

while answer != "n"
  puts "Would you like to add your own menu item? \n (y/n)"
  answer = gets.chomp.downcase
  #while answer != "n"
  if answer == "y"
    quest += 1
    puts "what would you like to add?"
    menu_item = gets.chomp
    puts "#{quest}. #{menu_item.capitalize}"
  elsif answer == "n"
    puts "Have a splendid day!"
  else
    puts "Error"
  end
end
