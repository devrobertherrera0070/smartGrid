//
//  ViewController.swift
//  MicroGridApplication
//
//  Created by Robert Herrera on 3/17/16.
//  Copyright © 2016 Robert Herrera. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {
    
    
    @IBOutlet weak var energyOutputButton: UIButton!
    @IBOutlet weak var weatherButton: UIButton!
    @IBOutlet weak var statisticsButton: UIButton!
    @IBOutlet weak var networkStatusButton: UIButton!

    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /* Button Actions */
    
    @IBAction func didPressButton(sender: UIButton) {
        
        if sender.titleLabel?.text == "Energy Output" {
             performSegueWithIdentifier("energySegue", sender: self)
        } else if sender.titleLabel?.text == "Weather" {
            performSegueWithIdentifier("weatherSegue", sender: self)
            
        } else if sender.titleLabel?.text == "Statistics" {
             performSegueWithIdentifier("statSegue", sender: self)
        } else if sender.titleLabel?.text == "Network Status" {
           performSegueWithIdentifier("networkSegue", sender: self)
        }
  
        
    }
  
    
    
    


}

