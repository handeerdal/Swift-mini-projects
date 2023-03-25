//
//  ViewController.swift
//  alerts
//
//  Created by Hande Erdal on 9.08.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var usernameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var passwordTextAgain: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func signUpButton(_ sender: Any) {
        
        if usernameText.text == ""
        {
            makealert(titleInput: "hata", messageInput: "kullanıcı adı boş bırakılamaz")
        }
        if passwordText.text == ""
        {
            makealert(titleInput: "hata", messageInput: "şifre boş bırakılamaz")
        }
        
        else if passwordText.text != passwordTextAgain.text
        {
            makealert(titleInput: "hata", messageInput: "şifreler aynı olmalıdır")
        }
        
    }
    
    func makealert(titleInput: String,messageInput: String){
        let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
        
        let okbutton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default,handler: nil)
    
        alert.addAction(okbutton)
        self.present(alert, animated: true, completion: nil)
        
        
    }
    
}

