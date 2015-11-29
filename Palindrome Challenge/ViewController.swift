//
//  ViewController.swift
//  Palindrome Challenge
//
//  Created by FareedQ on 2015-11-27.
//  Copyright © 2015 FareedQ. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var lblInfo: UILabel!
    @IBOutlet weak var txtFeild: UITextField!
    @IBOutlet weak var lblInfoHeight: NSLayoutConstraint!
    @IBOutlet weak var lblResults: UILabel!
    
    let palidromeController = Palindrome()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        txtFeild.delegate = self
        txtFeild.addTarget(self, action: "textFieldSelected:", forControlEvents: UIControlEvents.AllTouchEvents)
        
        lblInfo.text = "This application will find the longest palindrome word in a sentence. A palindrome is a word that is spelled the same forwards and backwards."
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func textFieldSelected(textField: UITextField) {
        UIView.animateWithDuration(0.3, animations: { () -> Void in
            self.lblInfo.alpha = 0
            self.view.layoutIfNeeded()
            }) { completion -> Void in
                UIView.animateWithDuration(0.3) { () -> Void in
                    self.lblInfo.text = ""
                    self.view.layoutIfNeeded()
                }
        }
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        guard let inputString = txtFeild.text else {return true}
        lblResults.text = palidromeController.process(inputString)
        txtFeild.text = ""
        return true
    }

    @IBAction func btnResults(sender: AnyObject) {
        guard let inputString = txtFeild.text else {return}
        lblResults.text = palidromeController.process(inputString)
    }
    
    func showResult(results:String) {
        if results.isEmpty {
            lblResults.text = "Yes, there is a palindrome in the input string and the largest one is " + results
        } else {
            lblResults.text = "No, there is not a palindrome in the input string"
        }
    }
    

}

