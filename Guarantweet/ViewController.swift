//
//  ViewController.swift
//  Guarantweet
//
//  Created by Vishal Srivastava on 10/22/17.
//  Copyright © 2017 Subversus Interactive. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate, UITextViewDelegate {
    
    
    @IBOutlet weak var promiseTextView: UITextView!
    @IBOutlet weak var dueDatePicker: UIDatePicker!
    @IBOutlet weak var amountTextField: UITextField!
    @IBOutlet weak var tweetLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Guarantweet"
        
        promiseTextView.delegate = self
        promiseTextView.autocapitalizationType = .none
        //promiseTextView.layer.borderWidth = 1
        //promiseTextView.layer.borderColor = UIColor.black.cgColor
        
        amountTextField.addTarget(self, action: #selector(textFieldDidChange(_:)), for: UIControlEvents.editingChanged)
        
        promiseTextView.text = "[enter your promise here]"
        amountTextField.text = "$1,000.00"

        
        //tweetLabel.layer.borderWidth = 1
        //tweetLabel.layer.borderColor = UIColor.black.cgColor
        
        
        updateTweetText()
    }
    

    func textViewDidChange(_ textView: UITextView) {
        updateTweetText()
    }

    func textFieldDidChange(_ textField: UITextField) {
        updateTweetText()
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func dueDatePickerValueChanged(_ sender: Any) {
        self.updateTweetText()
    }
    
    @IBAction func amountTextFieldValueChanged(_ sender: Any) {
        self.updateTweetText()
    }
    
    @IBAction func tweetButtonTapped(_ sender: Any) {
        let registryTableViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "RegistryTableViewController") as! RegistryTableViewController
        self.navigationController?.pushViewController(registryTableViewController, animated: true)
    }
    
    fileprivate func updateTweetText() {
        let amount = amountTextField.text ?? ""
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM-dd-yyyy"
        let dateStr = dateFormatter.string(from: dueDatePicker.date)
        
        tweetLabel.text = "I #guarantweet \(promiseTextView!.text!) by \(dateStr). I pledge \(amount) to Unicef if I fail.\nhttps://guarantweet.com/e89743"
    }
}

