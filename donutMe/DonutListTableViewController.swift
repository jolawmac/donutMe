//
//  DonutListTableViewController.swift
//  donutMe
//
//  Created by Josh & Erica on 3/27/17.
//  Copyright © 2017 Josh McDonald. All rights reserved.
//

import UIKit

class DonutListTableViewController: UITableViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return DonutListController.donutList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "donutCell", for: indexPath) as? DonutTableViewCell else {return UITableViewCell()}
        
        let donut = DonutListController.donutList[indexPath.row]
        cell.donut = donut
    
        
        
        
//        cell.textLabel?.text = donut.name
//        cell.imageView?.contentMode = .scaleAspectFill
//        cell.imageView?.image = UIImage(named: donut.imageName)
        
        return cell
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toDonutDetail" {
            if let detailViewController = segue.destination as? DonutDetailViewController,
                let selectedIndex = (self.tableView.indexPathForSelectedRow as NSIndexPath?)?.row {
                
                let donut = DonutListController.donutList[selectedIndex]
                detailViewController.donut = donut
            }
        }
        
    }
}
