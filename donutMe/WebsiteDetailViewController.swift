//
//  WebsiteDetailViewController.swift
//  donutMe
//
//  Created by Josh & Erica on 3/29/17.
//  Copyright © 2017 Josh McDonald. All rights reserved.
//

import UIKit

class WebsiteDetailViewController: UIViewController {
    
    var website: Website? {
        didSet {
            updateViews()
        }
    }
    
    func updateViews() {
        
    }


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
