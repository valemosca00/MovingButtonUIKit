//
//  ViewController.swift
//  MovingButtonExample
//
//  Created by Valerio Mosca on 28/03/23.
//

import UIKit

let userDefaults = UserDefaults.standard

// Recupera l'array dinamico dalle UserDefaults utilizzando la chiave
var performances = userDefaults.array(forKey: "scores") as? [String] ?? []
var uniqueArray = Array(Set(performances))
var sortedArray = uniqueArray.sorted { $0 < $1 }

let customFont = UIFont(name: "Vibur", size: 25.0)
//var performances: [String] = []

class ScoreboardViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBAction func emptyButton(_ sender: Any) {
        userDefaults.removeObject(forKey: "scores")
        userDefaults.synchronize()
        uniqueArray = []
        sortedArray = []
        tableView.reloadData()
        print("\(performances.count) \(uniqueArray.count) \(sortedArray.count)")
    }
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        // Do any additional setup after loading the view.
        label.font = customFont
        label.textAlignment = .center
        label.text = "Thanks for downloading the App!❤️"
        view.addSubview(label)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print("I'm calling func tableView")
        let cell = tableView.dequeueReusableCell(withIdentifier: "ScoreCell", for: indexPath) as! ScoreTableViewCell
        
        if sortedArray.count > indexPath.row {
            cell.timeLabel.text = sortedArray[indexPath.row]
        }
        cell.loadTableView(with: "", index: indexPath.row)
        // Configure the cell...
        
        return cell
    }
    
    override func viewWillAppear(_ animated: Bool) {
        //this method force the view to reload
        tableView.reloadData()
        super.viewWillAppear(animated)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //set the segue identifier befor doing this
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "ShowFirstGreen"{
            _ = segue.destination
            
        }
    }
    
}

