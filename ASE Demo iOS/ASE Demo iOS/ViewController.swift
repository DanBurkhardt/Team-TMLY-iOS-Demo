//
//  ViewController.swift
//  ASE Demo iOS
//
//  Created by Daniel Burkhardt on 10/4/16.
//  Copyright © 2016 Giganom LLC. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class ViewController: UIViewController {

    let vacationHelper = VacationHelper()
    
    @IBAction func randomize(_ sender: AnyObject) {
        let vacationId = Int(arc4random_uniform(3) + 1)
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

