//
//  ViewController.swift
//  Homework1
//
//  Created by Michael Ward on 1/25/17.
//  Copyright © 2017 Michael Ward. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var Label1: UILabel!
    
    @IBOutlet weak var Button1: UIButton!
    
    @IBOutlet weak var Button2: UIButton!
    
    @IBOutlet weak var Button3: UIButton!
    
    @IBOutlet weak var Button4: UIButton!
    
    @IBOutlet weak var Button5: UIButton!
    
    @IBOutlet weak var Button6: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Label1.text = "Hi guys!!"
        Label1.textAlignment = NSTextAlignment.center
        Button1.setTitle("Red", for: .normal)
        Button1.setTitleColor(UIColor.red, for: .normal)
        Button2.setTitle("Blue", for: .normal)
        Button2.setTitleColor(UIColor.blue, for: .normal)
        Button3.setTitle("Pink", for: .normal)
        Button3.setTitleColor(UIColor(red: (255.0/255.0), green: (105.0/255.0), blue: (180.0/255.0), alpha: 1.0), for: .normal)
        Button4.setTitle("Yellow", for: .normal)
        Button4.setTitleColor(UIColor.yellow, for: .normal)
        Button5.setTitle("Orange", for: .normal)
        Button5.setTitleColor(UIColor.orange, for: .normal)
        Button6.setTitle("Green", for: .normal)
        Button6.setTitleColor(UIColor.green, for: .normal)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func ButtonRed(_ sender: Any) {
        Label1.textColor = UIColor.red
    }
    
    @IBAction func ButtonBlue(_ sender: Any) {
        Label1.textColor = UIColor.blue
    }
    
    @IBAction func ButtonPink(_ sender: Any) {
        Label1.textColor = UIColor(red: (255.0/255.0), green: (105.0/255.0), blue: (180.0/255.0), alpha: 1.0)
    }
    
    @IBAction func ButtonYellow(_ sender: Any) {
        Label1.textColor = UIColor.yellow
    }
    
    @IBAction func ButtonOrange(_ sender: Any) {
        Label1.textColor = UIColor.orange
    }
    
    @IBAction func ButtonGreen(_ sender: Any) {
        Label1.textColor = UIColor.green
    }

    
}

