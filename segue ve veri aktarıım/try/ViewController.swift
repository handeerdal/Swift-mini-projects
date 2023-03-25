//
//  ViewController.swift
//  try
//
//  Created by Hande Erdal on 31.07.2022.
///Users/hande/Desktop/Swift öğreniyorum/yeniden/try/try/Assets.xcassets

import UIKit

class ViewController: UIViewController {
    var username = " "
    @IBOutlet weak var viewController1: UILabel!
    
    @IBOutlet weak var textfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
    }
    override func viewDidDisappear(_ animated: Bool) {
            print("viewDidDisappear called")
    }
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear called")
    }
    
    @IBAction func nextbutton(_ sender: Any) {
         username = textfield.text!
        performSegue(withIdentifier: "tosecondvc", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) { //seguden hemen onceki islem
        if segue.identifier == "tosecondvc"{
            let destinationvc = segue.destination as! secondViewController
            destinationvc.myName = username
            //as
            
        }
    }
}

