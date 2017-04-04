//
//  DonutTableViewCell.swift
//  donutMe
//
//  Created by Josh & Erica on 3/30/17.
//  Copyright © 2017 Josh McDonald. All rights reserved.
//

import UIKit

class DonutTableViewCell: UITableViewCell {

    @IBOutlet weak var donutImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    
    var donut: Donut? {
        didSet{
        updateView()
        }
    }
    
    func updateView() {
        guard let donut = self.donut else {return}
        self.donutImageView.image = UIImage(named: donut.imageName)
        self.donutImageView.layer.cornerRadius = 10.0
        self.nameLabel.text = donut.name
    }
 
}

