//
//  MovingButtonViewController.swift
//  MovingButtonExample
//
//  Created by Valerio Mosca on 29/03/23.
//

import UIKit

class MovingButtonViewController: UIViewController {

    @IBOutlet weak var timerLabel: UILabel!
    
    let buttonMove = CustomMovingButton(title: "",maxMovements: 2)


    var timeManager: TimeManager?
    
    override func viewDidLoad() {
        timeManager = TimeManager(label: timerLabel)
       
        super.viewDidLoad()

        let buttonIcon = UIImage(systemName: "hand.tap.fill")
        buttonMove.tintColor = .white
        buttonMove.setImage(buttonIcon, for: .normal)
        
        buttonMove.frame = CGRect(x: 100, y: 100, width: 60, height: 60)
        view.addSubview(buttonMove)
        buttonMove.action = navigate
        
//        timeManager!.startTimer()
//        timerLabel.text = timeString
    }
    
    func navigate(){
        resetTimer()
        let ResultView = ResultViewController()
        navigationController?.pushViewController(ResultView, animated: true)
    }

    func resetTimer(){
        timer.invalidate()
        count = 0
        timerCounting = false
        timerLabel.text = timeManager?.makeTimeString(hours: 0, minutes: 0, seconds: 0)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        timeManager!.startTimer()
        timerLabel.text = timeString
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        resetTimer()
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
