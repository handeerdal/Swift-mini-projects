import UIKit

class otobus{
    
    var kapasite : Int?
    var nereden : String?
    var nereye : String?
    var mevcutyolcu : Int?
    
    func yolcual(kactane : Int){
        let yenimevcut = mevcutyolcu! + kactane
        if kapasite!<yenimevcut {
        print("Bu kadar yolcu bindiremezsiniz.")
        }
        else{
            mevcutyolcu! += kactane
        }
        
    }
    
    func yolcuindir(kactane : Int){
        let yenimevcut = mevcutyolcu! - kactane
        if yenimevcut < 0{
        print("Olağan sayıdan fazla yolcu indiremezsiniz.")
        }
        else{
            mevcutyolcu! -= kactane
        }
    }
    
    func bilgial(){
        print("Kapasite: \(kapasite!)")
        print("Nereden: \(nereden!)")
        print("Nereye: \(nereye!)")
        print("Mevcut Yolcu: \(mevcutyolcu!)")
    }
    
}

var kamilkoc = otobus()

kamilkoc.kapasite = 35
kamilkoc.nereden = "Ankara"
kamilkoc.nereye = "Karabük"
kamilkoc.mevcutyolcu = 15

kamilkoc.bilgial()
kamilkoc.yolcual(kactane: 30)
kamilkoc.bilgial()
kamilkoc.yolcuindir(kactane: 10)
kamilkoc.bilgial()
