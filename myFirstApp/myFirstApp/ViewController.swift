//
//  ViewController.swift
//  myFirstApp
//
//  Created by Hande Erdal on 15.06.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageview: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonClicked(_ sender: Any) {
        imageview.image=UIImage(named: "IMG_4759")
        
    }
    
}

