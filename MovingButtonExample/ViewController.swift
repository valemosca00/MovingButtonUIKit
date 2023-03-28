//
//  ViewController.swift
//  MovingButtonExample
//
//  Created by Valerio Mosca on 28/03/23.
//

import UIKit

class ViewController: UIViewController {
    let button = UIButton(type: .system)
    override func viewDidLoad() {
        super.viewDidLoad()
        button.frame = CGRect(x: 100, y: 100, width: 100, height: 50)
        button.setTitle("Move", for: .normal)
        view.addSubview(button)
        // Do any additional setup after loading the view.
    }


}

