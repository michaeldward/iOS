//
//  ViewController.swift
//  HelloWorld3
//
//  Created by Michael Ward on 1/18/17.
//  Copyright © 2017 Michael Ward. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var HelloLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.HelloLabel.text = "Hello, world!"
        self.HelloLabel.center = self.view.center
        self.HelloLabel.font = self.HelloLabel.font.fontWithSize(20)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

