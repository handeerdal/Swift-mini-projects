import UIKit

class Maas{
    var gun:Int?
    var maas: Int?
    
    func maashesabı()->Int{
        var calismasaati = gun! * 8
        
        if calismasaati > 160{
            
            maas = 160*10
            calismasaati = calismasaati - 160
            maas=maas! + (20*calismasaati)
        }
        else{
            maas = calismasaati * 10
        }
        return maas!
}
}


var memur = Maas()

memur.gun=22
memur.maas = memur.maashesabı()

print("Alacağı ücret \(memur.maas!)")

