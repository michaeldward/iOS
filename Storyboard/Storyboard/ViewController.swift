//
//  ViewController.swift
//  Storyboard
//
//  Created by Michael Ward on 1/27/17.
//  Copyright © 2017 Michael Ward. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myLabel = UILabel()
        myLabel.text = "My custom label"
        myLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(myLabel)
        
        let centerXConstraint = NSLayoutConstraint(item: myLabel, attribute: .centerX, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: .centerX, multiplier: 1, constant: 0)
        let topLayoutConstraint = NSLayoutConstraint(item: myLabel, attribute: .top, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: .bottom, multiplier: 1, constant: 0)
        view.addConstraints([centerXConstraint, topLayoutConstraint])
        let centerYConstrait = NSLayoutConstraint(item: myLabel, attribute: .centerY, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: .centerY, multiplier: 1, constant: 0)
        view.addConstraints([centerXConstraint, centerYConstrait])
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

