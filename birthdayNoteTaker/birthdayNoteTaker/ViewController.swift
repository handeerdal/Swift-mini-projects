//
//  ViewController.swift
//  birthdayNoteTaker
//
//  Created by Hande Erdal on 23.07.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var bdayField: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var bdayLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBday = UserDefaults.standard.object(forKey: "bday")
        
        if let name =  storedName as? String {
            nameLabel.text = name
        }
        
        if let bday =  storedBday as? String {
            bdayLabel.text = bday
        }
       

    }
    
    @IBAction func deleteClicked(_ sender: Any) {
        
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBday = UserDefaults.standard.object(forKey: "bday")
        
        
        //nil boş demek
        
        
        if (storedBday as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "bday")
        }
        if (storedName as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "name")
        }
        
        
        //önce vri varmı diye kontrol et
        /*UserDefaults.standard.removeObject(forKey: "name")
        UserDefaults.standard.removeObject(forKey: "bday")*/
    }
    

    @IBAction func saveClicked(_ sender: Any) {
        UserDefaults.standard.set(nameField.text!, forKey: "name")
        UserDefaults.standard.set(bdayField.text!, forKey: "bday")

        nameLabel.text = "Name : \(nameField.text!)"
        bdayLabel.text = "Birthday : \(bdayField.text!)"
        
        
    }
    
}

