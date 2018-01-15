=begin
Consigne : 

Écris une fonction intitulée jean_michel_data qui prend en paramètre 2 data types :

le corpus, un string dans lequel tu devras checker le nombre d'occurence de différents strings
le dictionnaire, une array de mots pour qui tu vas compter les occurences dans le corpus

Logique : 

Stocker le texte dans une variable
Obtenir les mots de notre texte dans un tableau (split)
Créer un hash pour stocker la fréquence des mots ({ "le" => 1, "la" => 3 ...})
Parcourir le tableau des mots, et remplir le hash en fonction.
Organiser le hash pour obtenir les mots les plus fréquents.
=end

text = "Stocker le texte dans une variable
Obtenir les mots de notre texte dans un tableau (split)
Créer un hash pour stocker la fréquence des mots 
Parcourir le tableau des mots, et remplir le hash en fonction.
Organiser le hash pour obtenir les mots les plus fréquents."

dictionnaire = ["le", "la", "un", "une"]
#defini méthode JM avec deux paramètres: 
def jean_michel_data (dictionnaire,text)


# creer un hash pour stocker les mots# 
frequence = Hash.new(0)
#obtenir un tableau des mots du texte (split en ne prenant pas en compte les .,:" #
mots = text.tr(',.:"', '').downcase.split(' ')
#Itérer sur le tableau précédant#
mots.each do |mot| 
	frequence[mot] +=1 
end

frequence.each do |mot,count|
puts " Le mot \" #{mot}\" apparait #{count}fois" 
end
puts frequence.inspect 
end

jean_michel_data(dictionnaire,text)





