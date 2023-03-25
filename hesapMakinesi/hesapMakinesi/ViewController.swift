//
//  ViewController.swift
//  hesapMakinesi
//
//  Created by Hande Erdal on 15.06.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNumber: UITextField!
    
    
    @IBOutlet weak var secondNumber: UITextField!
    
    
    @IBOutlet weak var resultLable: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func plusClicked(_ sender: Any) {
        //İlk ünlem textten 1 değer gelecek. ikinci ünlem integere cevirilecek demek
        
        
        if let firstNumber = Int(firstNumber.text!){
            if let secondNumber = Int(secondNumber.text!){
                let result = firstNumber+secondNumber
                resultLable.text = String(result)
            }
            else{
                resultLable.text = "Yanlış girildi"
            }
        }
        
        else{
            resultLable.text = "Yanlış girildi"
        }
        
     
        
        

        
    }
    
    @IBAction func minusClicked(_ sender: Any) {
        if let firstNumber = Int(firstNumber.text!), let secondNumber = Int(secondNumber.text!){
                let result = firstNumber-secondNumber
                resultLable.text = String(result)
            }
        
        
        else{
            resultLable.text = "Yanlış girildi"
        }
        
    }
    
    @IBAction func multipleClicked(_ sender: Any) {
        if let firstNumber = Int(firstNumber.text!){
            if let secondNumber = Int(secondNumber.text!){
                let result = firstNumber*secondNumber
                resultLable.text = String(result)
            }
            else{
                resultLable.text = "Yanlış girildi"
            }
        }
        
        else{
            resultLable.text = "Yanlış girildi"
        }
        
    }
    
    @IBAction func divideClicked(_ sender: Any) {
        if let firstNumber = Int(firstNumber.text!){
            if let secondNumber = Int(secondNumber.text!){
                let result = Float(firstNumber)/Float(secondNumber)
                resultLable.text = String(result)
            }
            else{
                resultLable.text = "Yanlış girildi"
            }
        }
        
        else{
            resultLable.text = "Yanlış girildi"
        }
        
    }
    
}



