//
//  SpotifyTrack.swift
//  SpotifyIntro
//
//  Created by Michael Ward on 1/30/17.
//  Copyright © 2017 Michael Ward. All rights reserved.
//

import Foundation

class SpotifyTrack {
    
    var title = ""
    var artist = ""
    var previewUrl = ""
    
    init(json: [String: AnyObject]) {
        guard let title = json["name"] as? String
        
    }
}
