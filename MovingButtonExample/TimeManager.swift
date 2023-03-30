//
//  TimeManager.swift
//  MovingButtonExample
//
//  Created by Valerio Mosca on 28/03/23.
//

import Foundation
import UIKit

var timer : Timer = Timer()
var count : Int = 0
var timerCounting : Bool = false

var timeString : String = "00 : 00 : 00"

class TimeManager{
    
    let timerLabel: UILabel
        
        init(label: UILabel) {
            timerLabel = label
        }
    
    func startTimer(){
        if(timerCounting == false){
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerCounter), userInfo: nil, repeats: true)
            timerCounting = true
        }else{
            print("Timer is already on. Stop it.")
        }
    }
    
    @objc func timerCounter() -> Void {
        count += 1
        let time = secondsToHoursMinutesSeconds(seconds: count)
        timeString = makeTimeString(hours: time.0, minutes: time.1, seconds: time.2)
        timerLabel.text = timeString
    }
    
    func secondsToHoursMinutesSeconds(seconds: Int) -> (Int,Int,Int){
        
        return ((seconds / 3600), ((seconds % 3600) / 60), ((seconds % 3600) % 60))
    }
    
    func makeTimeString(hours: Int, minutes: Int, seconds: Int) -> String{
        var timeString: String = ""
        timeString += String(format: "%02d", hours)
        timeString += " : "
        timeString += String(format: "%02d", minutes)
        timeString += " : "
        timeString += String (format: "%02d", seconds)
        return timeString
    }
    
    func resetTimer(){
        timer.invalidate()
        count = 0
        timeString = "00 : 00 : 00"
        timerCounting = false
        timerLabel.text = self.makeTimeString(hours: 0, minutes: 0, seconds: 0)
    }
    
    
    func pauseTimer(){
        timer.invalidate()
        timerCounting = false
    }
    
}
