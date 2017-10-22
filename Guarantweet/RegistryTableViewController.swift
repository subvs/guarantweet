//
//  RegistryTableViewController.swift
//  Guarantweet
//
//  Created by Vishal Srivastava on 10/22/17.
//  Copyright © 2017 Subversus Interactive. All rights reserved.
//

import UIKit

class GuarantweetCell: UITableViewCell {
    @IBOutlet weak var tweetLabel: UILabel!
    
    @IBOutlet weak var deetLabel: UILabel!

}

class RegistryTableViewController: UITableViewController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "My Pledge-istry"
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 2
        case 1:
            return 4
        default:
            return 0
        }
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "October, 2017"
        case 1:
            return "September, 2017"
        default:
            return ""
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "GuarantweetCell", for: indexPath) as! GuarantweetCell
        cell.textLabel?.numberOfLines = 0
        
        switch indexPath.section {
        case 0:
            switch indexPath.row {
            case 0:
                cell.tweetLabel?.text = "I #guarantweet I'll build a moat around California to keep the Arizonans out by 10/31/2017. If I fail I pledge $1,500 to Puerto Rico."
                cell.deetLabel?.text = "5/12/2017. Pending..."
            case 1:
                cell.tweetLabel?.text = "I #guarantweet something else by 10/31/2017. If I fail I pledge $1,500 to Puerto Rico."
                cell.deetLabel?.text = "5/12/2017. ❌ Promise Broken."
            default:
                break
            }
        case 1:
            switch indexPath.row {
            case 0:
                cell.tweetLabel?.text = "I #guarantweet I'll build a moat around California to keep the Arizonans out by 10/31/2017. If I fail I pledge $1,500 to Puerto Rico."
                cell.deetLabel?.text = "5/12/2017. ✅ Promise Kept!"
            case 1:
                cell.tweetLabel?.text = "I #guarantweet I'll build a moat around California to keep the Arizonans out by 10/31/2017. If I fail I pledge $1,500 to Puerto Rico."
                cell.deetLabel?.text = "5/12/2017. ❌ Promise Broken."
            case 2:
                cell.tweetLabel?.text = "I #guarantweet I'll build a moat around California to keep the Arizonans out by 10/31/2017. If I fail I pledge $1,500 to Puerto Rico."
                cell.deetLabel?.text = "5/12/2017. ❌ Promise Broken."
            case 3:
                cell.tweetLabel?.text = "I #guarantweet I'll build a moat around California to keep the Arizonans out by 10/31/2017. If I fail I pledge $1,500 to Puerto Rico."
                cell.deetLabel?.text = "5/12/2017. ✅ Promise Kept!"
            default:
                break
            }
        default:
            break
        }

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    

}
