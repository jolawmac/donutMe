//
//  WebsiteTableViewCell.swift
//  donutMe
//
//  Created by Josh & Erica on 3/31/17.
//  Copyright © 2017 Josh McDonald. All rights reserved.
//

import UIKit

class WebsiteTableViewCell: UITableViewCell {
    
    @IBOutlet weak var websiteNameLabel: UILabel!
    @IBOutlet weak var websiteDetailTextView: UITextView!
    
    
    var website: Website? {
        didSet {
            updateViews()
        }
    }
    
    func updateViews() {
        guard let website = self.website else { return }
        self.websiteNameLabel.text = website.name
        self.websiteDetailTextView.text = website.webDescription
    }
    
}
