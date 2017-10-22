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
        // Do any additional setup after loading the view, typically from a nib.
        
        promiseTextView.delegate = self
        promiseTextView.autocapitalizationType = .none
        promiseTextView.layer.borderWidth = 1
        promiseTextView.layer.borderColor = UIColor.black.cgColor
        
        //promiseTextView.addTarget(self, action: #selector(textViewDidChange(_:)), for: UIControlEvents.editingChanged)
        amountTextField.addTarget(self, action: #selector(textFieldDidChange(_:)), for: UIControlEvents.editingChanged)
        
        
        promiseTextView.text = "[Promise]"
        amountTextField.text = "$1,000.00"

        
        tweetLabel.layer.borderWidth = 1
        tweetLabel.layer.borderColor = UIColor.black.cgColor
        
        
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
        
    }
    
    fileprivate func updateTweetText() {
        let amount = amountTextField.text ?? ""
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM-dd-yyyy"
        let dateStr = dateFormatter.string(from: dueDatePicker.date)
        
        tweetLabel.text = "I #Guarantweet \(promiseTextView!.text!) by \(dateStr). I pledge \(amount) to Unicef if I feil."
    }
}

