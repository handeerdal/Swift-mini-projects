import UIKit


/*
 Let -> sabitler let olarak tanımlanır (pi sayısı gibi)
 Var -> değişkenler

 */
var userName="james"

//integerler vs sınıf olarak önceden tanımlanabilir

var userSurname: String="Haylen"

//string dönüşümü yapma

let stringNumber = String(20)

// stringNumber*20 işlemi çalışmaz string şekilnde tanımladık


// DİZİLER

var myFavoriteMovies = ["pulp fiction","kill bill"]

myFavoriteMovies[0].uppercased()

myFavoriteMovies[myFavoriteMovies.count-1]

myFavoriteMovies.last

//SETLER

//aynı elemanları basmaz.

var myset : Set = [1,2,3,4]
var myset2 : Set = [6,7,8,9,1,2,3,4,5,7]

myset.union(myset2)

//SÖZLÜKLER

var myFavDirectors : Dictionary = ["pulp fiction":"tarantino","dark night":"nolan"]

myFavDirectors["pulp fiction"]

myFavDirectors["pulp fiction"] = "quentin tarantino"

myFavDirectors["yaprak dökümü"] = "ay yapım"

myFavDirectors
