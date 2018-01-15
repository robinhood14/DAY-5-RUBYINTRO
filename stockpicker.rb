=begin A partir d'une array de prix, on essaye de connaitre le meilleur jour d'achat, le meilleur jour de revente pour faire le maximum de bénéfices.
Voici par exemple une array de prix : [17,3,6,9,15,8,6,1,10], la fonction trader_du_dimanche va devoir sortir les index du jour d'achat et du jour de revente qui donneront le plus haut bénéfice. Pour l'array vue ci-haut par exemple, ce sera le deuxième jour (à l'achat) et le cinquième jour (à la revente)

> trader_du_dimanche([17,3,6,9,15,8,6,1,10])
=> [1,4]  # $15 - $3 == $12

Récuperer la plus haute valeur, y soustraire la plus basse valeur pour obtenir le meilleur benef
=end 


def trader_du_dimanche (arr)
    best = 0
    benef = 0
    days = ''

    arr.each do |x|
        y = x + 1
        while arr[y]
            benef = arr[y] - arr[x]
            if benef > best
                best = benef
                days = "#{x}, #{y} : $#{arr[y]} - $#{arr[x]} = #{best}"
            end
            y += 1
        end
    end
    return days
end


puts trader_du_dimanche ([17,3,6,9,15,8,6,1,10])


  