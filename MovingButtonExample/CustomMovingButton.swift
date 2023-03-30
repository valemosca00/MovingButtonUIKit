//
//  File.swift
//  NavDoor
//
//  Created by Valerio Mosca on 28/03/23.
//

import Foundation
import UIKit

class CustomMovingButton: UIButton {
    var counter: Int = 0
    var max: Int = 0
    var action: (()->())? = nil
    var decreasingDuration: TimeInterval = 2
    
    convenience init(title: String, maxMovements: Int, type: UIButton.ButtonType = .system, action: (()->())? = nil) {
        self.init(type: type)
        self.max = maxMovements
        setTitleColor(UIColor.white, for: .normal)
        setTitle(title, for: .normal)
        backgroundColor = .blue
        addTarget(self, action: #selector(moveButton), for: .touchUpInside)
    }
    
    @objc func moveButton() {
        if(counter < max){
            UIView.animate(withDuration: decreasingDuration) {
                self.frame = CGRect(x: self.randomNumberHorizontal(), y: self.randomNumberVertical(), width: 60, height: 60)
                //Remember to change width and height based on your necessity
            }
            decreasingDuration -= 0.3
            counter += 1
        }else{
            decreasingDuration = 1
            counter = 0
            action?()
        }
    }
    
    //You can get rid of this chunk of code if you dont want the button to be circle
    override func layoutSubviews() {
        super.layoutSubviews()
        
        layer.cornerRadius = frame.size.height / 2
    }
    
    //Based on Iphone 14 Pro screen
    func randomNumberVertical() -> Int {
        return Int(arc4random_uniform(UInt32(800 - 60 + 1))) + 60
    }
    
    func randomNumberHorizontal() -> Int {
        return Int(arc4random_uniform(UInt32(315 - 0 + 1))) + 0
    }
    
}





