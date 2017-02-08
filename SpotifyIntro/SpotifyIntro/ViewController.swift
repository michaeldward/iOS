//
//  ViewController.swift
//  SpotifyIntro
//
//  Created by Michael Ward on 1/30/17.
//  Copyright © 2017 Michael Ward. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        SpotifyManager.search(query: "Muse")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


extension ViewController: UISearchBarDelegate {
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print (searchText)
    }
}

