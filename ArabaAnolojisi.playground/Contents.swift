import UIKit

class araba {
    var calisiyormu : Bool?
    var renk : String?
    var hiz : Int?
    
    func calistir(){
        calisiyormu = true
    }
    func durdur(){
        calisiyormu = false
        hiz = 0
    }
    
    func hizlandir(kackm:Int){
        hiz!+=kackm
        
    }
    func yavaslat(kackm:Int){
        hiz!-=kackm
        
    }
    func bilgial(){
        if( calisiyormu==true){
            print("Araba çalışıyor")
        }
        else{
            print("Araba çalışmıyor")
        }
        print("Arabanın hızı \(hiz!)")
        print("Arabanın rengi \(renk!)")
    }
    
}

var bmw = araba()

bmw.renk = "Kırmızı"
bmw.hiz = 180

bmw.calistir()

bmw.bilgial()

bmw.hizlandir(kackm: 120)

bmw.bilgial()

bmw.durdur()

bmw.bilgial()
