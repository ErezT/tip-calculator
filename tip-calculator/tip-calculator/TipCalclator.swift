//
//  TipCalclator.swift
//  tip-calculator
//
//  Created by ereztavor on 5/31/16.
//  Copyright © 2016 ereztavor. All rights reserved.
//

import UIKit


class TipCalclator: UIViewController {
    
    
    @IBAction func userInputAction(sender: UITextField) {
        userInput = Double(userInputOutlet.text!)!
        
    }
    
    @IBAction func percentSegmentedAction(sender: UISegmentedControl) {
        percent = Double(percentOutlet.titleForSegmentAtIndex(percentOutlet.selectedSegmentIndex)!)!
    }
    
    @IBAction func peopleSegmentedAction(sender: UISegmentedControl) {
        people = Double(peopleOutlet.titleForSegmentAtIndex(peopleOutlet.selectedSegmentIndex)!)!
        result = (userInput * (percent / 100)) / people
        
        resultOutlet.text = String(result)
    }
    
    

    
    
    var userInput = 0.0
    var percent = 0.0
    var people = 0.0
    var result = 0.0
    
    
    @IBOutlet weak var resultOutlet: UILabel!
    @IBOutlet weak var peopleOutlet: UISegmentedControl!
    @IBOutlet weak var percentOutlet: UISegmentedControl!
    @IBOutlet weak var userInputOutlet: UITextField!
    

}
