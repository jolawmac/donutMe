//
//  DonutDetailViewController.swift
//  donutMe
//
//  Created by Josh & Erica on 3/27/17.
//  Copyright © 2017 Josh McDonald. All rights reserved.
//

import UIKit

class DonutDetailViewController: UIViewController {
    
    @IBOutlet weak var donutImageView: UIImageView!
    @IBOutlet weak var donutNameLabel: UILabel!
    @IBOutlet weak var donutDetailTextView: UITextView!
    
    var donut: Donut? {
        didSet {
            updateViews()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
    }
    
    func updateViews() {
        guard let donut = donut, self.isViewLoaded else { return }
        
        title = donut.name
        donutImageView.image = UIImage(named: donut.imageName)
        donutNameLabel.text = donut.name
        donutDetailTextView.text = donut.donutInfo
    }
    
    
}
