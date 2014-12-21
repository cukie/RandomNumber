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
  
  @IBOutlet weak var randomizeButton: UIButton!
  
  
  @IBAction func randomizeNumber(sender: AnyObject) {
  
    // when the button is pressed, hide keyboard
    upperBoundField.resignFirstResponder()
    
    let string = upperBoundField.text
    let num = string.toInt()
    let unum = UInt32(num!)
    let rand = arc4random_uniform(unum)
    
    let toDisplay = String(rand)
    //self.displayNumber.text = toDisplay
    self.randomizeButton.setTitle(toDisplay, forState: UIControlState.Normal)
    
    
    
  }
  
  
  override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
    self.view.endEditing(true)
  }
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    self.randomizeButton.layer.cornerRadius = self.randomizeButton.frame.height/2
    self.randomizeButton.clipsToBounds = true
    self.randomizeButton.layer.borderColor = UIColor.blueColor().CGColor
    self.randomizeButton.layer.borderWidth = 1
    // Do any additional setup after loading the view, typically from a nib.
//    
//    let alertController = UIAlertController(title: "Press Button to Randomize", message: nil, preferredStyle: UIAlertControllerStyle.Alert)
//    alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.Default, handler: nil))
//    self.presentViewController(alertController, animated: true, completion: nil)
    
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

