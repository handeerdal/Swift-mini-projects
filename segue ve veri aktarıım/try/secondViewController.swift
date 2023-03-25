//
//  secondViewController.swift
//  try
//
//  Created by Hande Erdal on 31.07.2022.
//

import UIKit

class secondViewController: UIViewController {

    @IBOutlet weak var namelabel: UILabel!
    @IBOutlet weak var secondController: UILabel!
    var myName = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        namelabel.text = "name \(myName)"
        
       
    }
    


}
