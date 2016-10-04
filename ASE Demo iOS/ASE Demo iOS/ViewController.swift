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
    let defaults = UserDefaults.standard
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func randomize(_ sender: AnyObject) {
        let id = String(Int(arc4random_uniform(3) + 1))
        vacationHelper.getVacation(id) { (success) in
            if success {
                let imageData = self.defaults.object(forKey: "testImage") as! Data
                let image = UIImage(data: imageData)
                self.imageView.image = image
            } else {
                print("Could not reach vacation server")
            }
        }
        self.label.isHidden = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if let imageData = self.defaults.object(forKey: "testImage") as! Data? {
            let image = UIImage(data: imageData)
            self.imageView.image = image
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

