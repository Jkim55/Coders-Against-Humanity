//
//  CardController.swift
//  Coders-Against-Humanity
//
//  Created by Catie Cook on 11/2/16.
//  Copyright © 2016 Ji. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

func loadCards(apiUrl: String, callback: @escaping (Data) -> Void){
    
    Alamofire.request(apiUrl).responseJSON(completionHandler : {
        response in
        callback(response.data!)
    })
    
}
