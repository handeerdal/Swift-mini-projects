//
//  ViewController.swift
//  citySightseeing
//
//  Created by Hande Erdal on 24.01.2023.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    

    @IBOutlet weak var tableView: UITableView!
    
    var cities = [Cities]()
    var chosen : Cities?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate=self
        tableView.dataSource=self
        
        // city
        
       let paris = Cities(name: "paris", teritory: "france", image: UIImage(named: "paris")!)
       let budapest = Cities(name: "budapest", teritory: "macaristan", image: UIImage(named: "budapest")!)
       let venice = Cities(name: "venice", teritory: "italy", image: UIImage(named: "venice")!)

       let wien = Cities(name: "wien", teritory: "austria", image: UIImage(named: "wien")!)

       cities = [wien,paris,budapest,venice]
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cities.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text=cities[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
         chosen = cities[indexPath.row]
        performSegue(withIdentifier: "toDetailsVC", sender:nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier=="toDetailsVC"
        {
            let destinationvc = segue.destination as! DetailsViewController
            destinationvc.chosenCity = chosen
        }
    }


}




