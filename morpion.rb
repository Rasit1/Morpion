puts "Salut, bienvenue dans le jeu de morpion"
puts "Veuillez entrez vos noms respectifs"

puts "Joueur 1 :"
puts ">"
j1 = gets
puts "Joueur 2 :"
puts ">"
j2 = gets
tab = ["","","","","","","","",""]
table = ["1","2","3","4","5","6","7","8","9"]
puts "voici la table du jeu entre #{j1}" + "et #{j2}"
puts table[0..2].to_s
puts table[3..5].to_s
puts table[6..8].to_s
tabex = ["__","__","__","__","__","__","__","__","__"]
# tabex = ["1","2","3","4","5","6","7","8","9"]
win=0

puts "#{j1}, Choisissez votre pion entre X et O"
signe = gets.chomp
puts tabex[0..2].to_s
puts tabex[3..5].to_s
puts tabex[6..8].to_s
while (signe!="X" && signe!="O")
  puts "Seulement entre X ou O svp"
  signe = gets.chomp
end
if signe == "X"
  puts "#{j1} utilise X "
else
  puts "#{j2} utilise X "
end
# while ((tab[A1]=="" || tab[A2]=="" || tab[A3]=="" || tab[B1]=="" || tab[B2]=="" || tab[B3]=="" || tab[C1]=="" || tab[C2]=="" || tab[C3]=="") && win==0)

while ((tab[0]=="" || tab[1]=="" || tab[2]=="" || tab[3]=="" || tab[4]=="" || tab[5]=="" || tab[6]=="" || tab[7]=="" || tab[8]=="") && win==0)
  puts "Quelle case voulez vous remplir ?"
  x = gets.chomp.to_i - 1
  while tab[x]!=""
    puts "Choisissez une autre case"
    x = gets.chomp.to_i - 1
  end
  tab[x]=signe
  tabex[x]=signe
  puts tabex[0..2].to_s
  puts tabex[3..5].to_s
  puts tabex[6..8].to_s
  if (signe=="X")
    signe="O"

  else
    signe="X"
  #  puts "Le joueur 1 utilise X pendant que le joueur 2 utilise O "

  end
  if (tab[0]==tab[1] && tab[0]==tab[2] && tab[0]!="" || tab[3]==tab[4] && tab[3]==tab[5] && tab[3]!="" || tab[6]==tab[7] && tab[6]==tab[8] && tab[6]!="" || tab[0]==tab[3] && tab[0]==tab[6] && tab[0]!="" || tab[1]==tab[4] && tab[1]==tab[7] && tab[1]!="" || tab[2]==tab[5] && tab[2]==tab[8] && tab[2]!="" || tab[0]==tab[4] && tab[0]==tab[8] && tab[0]!="" || tab[2]==tab[4] && tab[2]==tab[6] && tab[2]!="")
    win=1
  end
end
if win==1
  if (signe=="X")
    puts "fin de partie, #{j1} a gagné"
  else
    puts "fin de partie, #{j2} a gagné"
  end
else
  puts "fin de partie, match nul"
end
