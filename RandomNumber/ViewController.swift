//
//  ViewController.swift
//  RandomNumber
//
//  Created by Gil Cukierman on 12/17/14.
//  Copyright (c) 2014 Gil Cukierman. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController, UITextFieldDelegate  {
  
  
  @IBOutlet weak var displayNumber: UILabel!
  @IBOutlet weak var upperBoundField: UITextField!
  
  @IBAction func randomizeNumber(sender: AnyObject) {
  
    // when the button is pressed, hide keyboard
    upperBoundField.resignFirstResponder()
    
    let string = upperBoundField.text
    let num = string.toInt()
    let unum = UInt32(num!)
    let rand = arc4random_uniform(unum)
    
    let toDisplay = String(rand)
    self.displayNumber.text = toDisplay
    
    
  }
  
  
  override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
    self.view.endEditing(true)
  }
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

