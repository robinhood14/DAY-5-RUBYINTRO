
# déclaration des variables #

sum = 0
num = 0

# on utilise la fonction boucle "for" pour tout les nombres inférieurs a 1000# 
for num in 1 ... 1000 

# si le nombre est divisible par 3 | divisible par 5#
	if (num % 3 == 0 || num % 5 == 0)  

# on ajoute ce nombre qui verifie la condition a la somme de départ ( sum=0)		
	sum =sum + num 
	end 	
end 

# on affiche le résultat de la somme de départ + somme de chaque nombres de la fonction for #
puts " La somme des mutliples de 3 et 5 situés en dessous de 1000 est égale à #{sum}"

