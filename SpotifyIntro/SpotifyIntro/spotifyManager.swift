//
//  spotifyManager.swift
//  SpotifyIntro
//
//  Created by Michael Ward on 1/30/17.
//  Copyright © 2017 Michael Ward. All rights reserved.
//

import Foundation

class SpotifyManager {
    
    let baseQueryString = "https://api.spotify.com/v1/search?market=US&limit=2&type=artist&q="
    
    static func search(query: String) {
        guard let escapedQuery = query.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed), let url = URL(string: baseQueryString + escapedQuery) else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url)
            { (data, response, error) in
                guard let data = data,
                error == nil else {
                    print("failed to fetch data")
                    return
            }
            
            print(NSSString(data: data, endocing: String.Encoding.utf8.rawValue))
                
                guard let raw = try? JSONSerialization.jsonObject(with: data, options: .mutableContainers),
                    let json = raw as? [String: AnyObject] else {
                        print("failed to parse json")
                        return
                }
                
                let trasks = parseSpotifyTracks(json: json)
        }
            task.resume()
        }
        
        static func parseSpotifyTracks(json: [String: AnyObject]) -> [SpotifyTrack] {
            var tracks = [SpotifyTrack]()
            guard let jsonTracks = json["tracks"] as? [String: AnyObject], let jsonItems = jsonTracks["items"] as? [[String: AnyObject]] else {
                return tracks
            }
            
            for jsonItem in jsonItems {
                tracks.append(SpotifyTrack(json: jsonItem))
            }
            
            return tracks
        }
    }
