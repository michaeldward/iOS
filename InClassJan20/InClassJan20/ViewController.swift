//
//  ViewController.swift
//  InClassJan20
//
//  Created by Michael Ward on 1/20/17.
//  Copyright © 2017 Michael Ward. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let colors = ["Blue", "Black", "Red", "Green", "Yellow"]
    let uiColors = [UIColor.blueColor(), UIColor.blackColor(), UIColor.redColor(), UIColor.greenColor(), UIColor.yellowColor()]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet var pickerView: UIView!
    
}

