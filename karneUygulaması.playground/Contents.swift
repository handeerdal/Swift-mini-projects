import UIKit

var notlar = [Int]()
var dersler = [String]()

dersler.append("Tarih")
notlar.append(10)
dersler.append("Mat")
notlar.append(100)
dersler.append("Biyoloji")
notlar.append(50)
dersler.append("Fizik")
notlar.append(90)

for (e1, e2) in zip(dersler, notlar) {
    print("\(e1) dersinin notu \(e2) dir")
    
    
}

