//
//  ResultView.swift
//  MovingButtonExample
//
//  Created by Valerio Mosca on 29/03/23.
//

import UIKit

class ResultViewController:
                                
    UIViewController{
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        view.backgroundColor = .white
        let label = UILabel(frame: CGRect(x: 45, y: self.view.center.y, width: 300, height: 50))
        
        label.font = customFont
        label.textAlignment = .center
        label.text = "Your time is: \(timeString)"
        view.addSubview(label)
        
        let labelGoBack = UILabel(frame: CGRect(x: 45, y: self.view.center.y + 60, width: 300, height: 50))
        labelGoBack.font = customFont
        labelGoBack.textAlignment = .center
        labelGoBack.text = "Go back to try again!"
        view.addSubview(labelGoBack)
        
        let imageView = UIImageView(image: UIImage(named: "NicelyDone"))
        imageView.frame = CGRect(x: 45, y: 150, width: 307, height: 230)
        view.addSubview(imageView)
        
        
        if(timeString != "00 : 00 : 00"){
            savePerformance()
        }
        timeString = "00 : 00 : 00"
        
        
    }
    
//    func emptyArray(){
//        // Empty the array saved inside UserDefaults
//        userDefaults.removeObject(forKey: "scores")
//        
//        userDefaults.synchronize()
//    }
    
    func savePerformance(){
        //save the performance and reset the time
        performances.append(timeString)
        
        //Save the updated dynamic array inside the UserDefaults
        userDefaults.set(performances, forKey: "scores")
        
        userDefaults.synchronize()
        
        uniqueArray = Array(Set(performances))
        sortedArray = uniqueArray.sorted { $0 < $1 }
    }
    
}
