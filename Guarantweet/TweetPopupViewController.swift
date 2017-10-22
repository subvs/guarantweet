//
//  TweetPopupViewController.swift
//  Guarantweet
//
//  Created by Vishal Srivastava on 10/22/17.
//  Copyright © 2017 Subversus Interactive. All rights reserved.
//

import UIKit

class TweetPopupViewController: UIViewController {
    
    @IBOutlet weak var tweetLabel: UILabel!
    @IBOutlet weak var nowHoldingTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Promise Made."
        
        tweetLabel.text = tweetText
        
        nowHoldingTextView.text = "We're now holding your \(amountText) in escrow.\n\nYou'll get it back on \(dueDateText)... if you keep your promise. Now get to work!"
    }
    
    @IBAction func buttonTapped(_ sender: Any) {
        let registryTableViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "RegistryTableViewController") as! RegistryTableViewController
        self.navigationController?.pushViewController(registryTableViewController, animated: true)
    }
}

