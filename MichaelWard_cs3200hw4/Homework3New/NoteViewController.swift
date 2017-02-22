//
//  NoteViewController.swift
//  Homework3New
//
//  Created by Michael Ward on 2/15/17.
//  Copyright © 2017 Michael Ward. All rights reserved.
//

import UIKit

class NoteViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextView!
    
    var noteText = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.text = noteText
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
