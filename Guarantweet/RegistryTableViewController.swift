//
//  RegistryTableViewController.swift
//  Guarantweet
//
//  Created by Vishal Srivastava on 10/22/17.
//  Copyright © 2017 Subversus Interactive. All rights reserved.
//

import UIKit

class RegistryTableViewController: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "My Pledge-istry"
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 7
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "GuarantweetCell", for: indexPath)
        
        cell.textLabel?.text = "\"Section \(indexPath.section) Row \(indexPath.row)\""
        cell.detailTextLabel?.text = "5/12/2017"
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Section \(section)"
    }
}
