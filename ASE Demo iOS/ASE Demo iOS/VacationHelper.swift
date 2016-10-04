//
//  VacationHelper.swift
//  ASE Demo iOS
//
//  Created by Daniel Burkhardt on 10/4/16.
//  Copyright © 2016 Giganom LLC. All rights reserved.
//

import Foundation
import Alamofire

class VacationHelper {
    
    var currentID = ""
    
    var apiURL = "http://aseprojecttest.mybluemix.net/aseproject"
    
    var imageBaseUrl = "http://danburkhardt.com/CS/cs4156/vactions/"
    
    var defaults = UserDefaults.standard
    
    func getVacation(_ id: String, completion:@escaping (_ success: Bool) -> Void) {
        
        let fullURL = "\(imageBaseUrl)\(id).jpg"
        
        Alamofire.request(fullURL).responseJSON { response in
            //print(response.request)  // original URL request
            print(response.response) // HTTP URL response
            print(response.data)     // server data
            //print(response.result)   // result of response serialization
            
            
            self.defaults.set(response.data, forKey: "testImage")
            
            completion(true)
            
            /*
            if let JSON = response.result.value {
                print("JSON: \(JSON)")
            }*/
        }
        
    }

}
