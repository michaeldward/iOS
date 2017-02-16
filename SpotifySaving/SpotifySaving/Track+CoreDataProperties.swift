//
//  Track+CoreDataProperties.swift
//  SpotifySaving
//
//  Created by Michael Ward on 2/10/17.
//  Copyright © 2017 Michael Ward. All rights reserved.
//

import Foundation
import CoreData


extension Track {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Track> {
        return NSFetchRequest<Track>(entityName: "Track");
    }

    @NSManaged public var songTitle: String
    @NSManaged public var artistName: String
    @NSManaged public var previewURL: String
    @NSManaged public var imageURL: String

}
