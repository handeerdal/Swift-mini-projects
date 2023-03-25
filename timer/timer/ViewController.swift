//
//  ViewController.swift
//  timer
//
//  Created by Hande Erdal on 11.08.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var timerLabel: UILabel!
    
    var timer = Timer()
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        counter = 10
        timerLabel.text = "Time : \(counter)"
    
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector:#selector(timerFunc), userInfo: nil, repeats: true)
        
    }
    
    @objc func timerFunc(){
        
        timerLabel.text = "Time : \(counter)"
        counter -= 1
        if (counter==0){
            timerLabel.text = "Time is over"
        timer.invalidate()
            
        }
        
    }
    

}

