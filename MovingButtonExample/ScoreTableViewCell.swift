//
//  ScoreTableViewCell.swift
//  MovingButtonExample
//
//  Created by Valerio Mosca on 29/03/23.
//

import Foundation
import UIKit

class ScoreTableViewCell: UITableViewCell{
    @IBOutlet weak var imageLabel: UIImageView!
    @IBOutlet weak var timeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func loadTableView(with performance: String, index: Int){
        
        switch index {
        case 0:
            let image = UIImage(named: "gold-medal.png")
            imageLabel.image = image
            
        case 1:
            let image = UIImage(named: "silver-medal.png")
            imageLabel.image = image
            
        case 2:
            let image = UIImage(named: "bronze-medal.png")
            imageLabel.image = image
            
        default:
            print("Have you done something new?")
        }
    }
    
}

