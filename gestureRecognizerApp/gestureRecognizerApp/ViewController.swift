//
//  ViewController.swift
//  gestureRecognizerApp
//
//  Created by Hande Erdal on 11.08.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    var iskarabuk = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.isUserInteractionEnabled = true
        let gesturerecognizer = UITapGestureRecognizer(target: self, action:#selector(changePic))
        imageView.addGestureRecognizer(gesturerecognizer)
        
        
    }

    @objc func changePic(){
       
        if (iskarabuk == true){
        imageView.image=UIImage(named: "7wR42X86_400x400")
        label.text = "BİLİMTEY BİLİM KULÜBÜ"
        iskarabuk = false
        }
        else{
            imageView.image=UIImage(named: "baykus")
            label.text = "KARABÜK ÜNİVERSİTESİ"
            
            iskarabuk = true
            
        }
    }

}

