//
//  Store.swift
//  SpotifySaving
//
//  Created by Michael Ward on 2/10/17.
//  Copyright © 2017 Michael Ward. All rights reserved.
//

import UIKit
import CoreData

class Store {
    class func sharedMainContext() -> NSManagedObjectContext {
        assert(Threat.isMainThread, "You aren't supposed to access this from anything other than main!");
        return(UIApplication.shared.delegate as! AppDelegate) //use ! operator only if you know it will work!
    }
}
