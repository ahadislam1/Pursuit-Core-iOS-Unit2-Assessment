//
//  TableViewController.swift
//  Unit2Assessment
//
//  Created by Ahad Islam on 11/10/19.
//  Copyright © 2019 Ahad Islam. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    let crayons = Crayon.allTheCrayons
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return crayons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Color Cell", for: indexPath)
                
        cell.textLabel?.text = crayons[indexPath.row].name
        cell.detailTextLabel?.text = crayons[indexPath.row].hex
        cell.backgroundColor = UIColor(displayP3Red: CGFloat(crayons[indexPath.row].red / 255),
                                       green: CGFloat(crayons[indexPath.row].green / 255),
                                       blue: CGFloat(crayons[indexPath.row].blue / 255), alpha: 1)
        
        return cell
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let tappedTableCell = sender as? UITableViewCell else { return }
        guard let cellIndexPath = tableView.indexPath(for: tappedTableCell) else { return }
        if let crayonDetail = segue.destination as? DetailViewController {
            crayonDetail.crayon = crayons[cellIndexPath.row]
        }
    }
}
