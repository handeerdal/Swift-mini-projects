import UIKit

class kota{
    func ucret(kotamiktari:Int)->Int{
        var ucret = 0
        if(kotamiktari<50){
             ucret = 100
        }
        else{
            var asimmiktari = kotamiktari - 50
             ucret = 100 + asimmiktari*4
        }
        return ucret
    }
}

var ttnet = kota()
var ucret = ttnet.ucret(kotamiktari: 55)
