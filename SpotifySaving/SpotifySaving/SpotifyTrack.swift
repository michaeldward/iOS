//
//  Item.swift
//  Spotify
//
//  Created by Brad Richardson on 1/29/16.
//  Copyright © 2016 USU. All rights reserved.
//

import Foundation

class SpotifyTrack {
    
    var title = ""
    var artist = ""
    var previewUrl = ""
    var imageUrl = ""
    
    init(json: [String: AnyObject]) {
        //print(json)
        
        //print("\n\n\n\n")
        guard let title = json["name"] as? String
            else {
                return
        }
        self.title = title
        
        guard let artists = json["artists"] as? [[String: AnyObject]],
            let firstArtist = artists.first,
            let artist = firstArtist["name"] as? String
            else {
                return
        }
        self.artist = artist

        guard let previewUrl = json["preview_url"] as? String
            else {
                return
        }
        self.previewUrl = previewUrl
        
        guard let name = json["href"] as? String
            else {
                return
        }
        //print(name)
        
        guard let album = json["album"] as? [String: AnyObject],
            let imageArr = album["images"] as? [[String: AnyObject]],
            let firstImage = imageArr.first,
            let imageUrl = firstImage["url"] as? String
            else {
                return
        }
        self.imageUrl = imageUrl
    }
    
}
