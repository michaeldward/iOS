//
//  PhotoData.swift
//  Homework5
//
//  Created by Michael Ward on 2/27/17.
//  Copyright © 2017 Michael Ward. All rights reserved.
//

import Foundation

class PhotoData {
    
    var farm = ""
    var server = ""
    var id = ""
    var secret = ""
    
    var imageUrl: URL? {
        get {
            let urlString =  "https://farm\(farm).staticflickr.com/\(server)/\(id)_\(secret)_m.jpg"
            guard let url = URL(string: urlString) else {
                return URL(string: "")
            }
            return url
        }
    }
    
    class func fromJson(_ json: [String: Any]) -> PhotoData? {
        guard let id = json["id"] as? String,
            let secret = json["secret"] as? String,
            let server = json["server"] as? String,
            let farm = json["farm"] as? Int else {
                return nil
        }
        
        let newData = PhotoData()
        newData.farm = farm.description
        newData.id = id
        newData.server = server
        newData.secret = secret
        return newData
    }
    
}
