import UIKit


var isimler = [String]()

isimler.append("Hande")
isimler.append("Ayşe")
isimler.append("Fatma")
isimler.append("Hayriye")

var kontrolisim = "Seda"

for i in isimler{
    if i == kontrolisim{
        print("Bulundu")}
    else if i == isimler[isimler.count-1]{
        print("Hiçbir isim seda değil")
    }
}
