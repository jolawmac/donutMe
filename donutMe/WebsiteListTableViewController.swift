//
//  WebsiteListTableViewController.swift
//  donutMe
//
//  Created by Josh & Erica on 3/29/17.
//  Copyright © 2017 Josh McDonald. All rights reserved.
//

import UIKit

class WebsiteListTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return WebsiteListController.websiteList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "websiteCell", for: indexPath) as? WebsiteTableViewCell else { return UITableViewCell() }
        
        let website = WebsiteListController.websiteList[indexPath.row]
        cell.website = website
        
        cell.layer.borderColor = UIColor(colorLiteralRed: 142.0 / 255.0, green: 141.0 / 255.0, blue: 144.0 / 255.0, alpha: 1.0).cgColor
        cell.layer.borderWidth = 2
        cell.layer.cornerRadius = 10

        return cell
    }

    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       
        if segue.identifier == "toWebsiteDetail" {
            if let detailViewController = segue.destination as? WebsiteDetailViewController,
                let selectedIndex = (self.tableView.indexPathForSelectedRow as NSIndexPath?)?.row {
                
                let website = WebsiteListController.websiteList[selectedIndex]
                detailViewController.website = website
            }
        }

        
    }
    

}
