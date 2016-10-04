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
    
    
    func getVacation(_ id: String, completion:@escaping (_ success: Bool) -> Void) {
        
        if id != nil{
            currentID = id
        }
        
        if currentID != nil{
            completion(true)
        }else{
            completion(false)
        }
        
        /*
        Alamofire.request(.GET, url).validate().responseJSON { response in
            switch response.result {
            case .Success:
                if let value = response.result.value {
                    let json = JSON(value)
                    
                    print("JSON: \(json)")
                    
                    completion(success: true)
                    
                }
            case .Failure(let error):
                print(error)
                completion(success: false)
            }

        
         })*/
    }

}
