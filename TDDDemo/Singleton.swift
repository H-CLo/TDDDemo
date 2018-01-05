//
//  Singleton.swift
//  TDDDemo
//
//  Created by Hung Chang Lo on 2018/1/5.
//  Copyright © 2018年 Hung Chang Lo. All rights reserved.
//

import Foundation
import Alamofire

private let singleton_sharedInstance = Singleton()

class Singleton {
    
    let link = "http://data.ntpc.gov.tw/api/v1/rest/datastore/382000000A-000157-002"
    
    class func sharedInstance() -> Singleton {
        
        return singleton_sharedInstance
    }
    
    func getAPI() -> Void {
        
        Alamofire.request(link).responseJSON { response in
            
            //避免取得的資料為nil
            if let json = response.result.value {
                //取得台灣各地觀測站的空氣品質指標
                print("json: \(json)")
            }
        }
        
    }
    
}
