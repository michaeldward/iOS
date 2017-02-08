//
//  ViewController.swift
//  Homework2
//
//  Created by Michael Ward on 2/1/17.
//  Copyright © 2017 Michael Ward. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var dayPicker: UIPickerView!

    @IBOutlet weak var stuffView: UITableView!
    
    @IBOutlet weak var stuffField: UITextField!
    
    
    
    let days = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
    
    var stuff = [[String](), [String](), [String](), [String](), [String](), [String](), [String]()]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func saveStuff(_ sender: Any) {
        let stuffToDo = stuffField.text
        
        DispatchQueue.main.async {
            self.stuffView.beginUpdates()
            let selectedDay = self.days[self.dayPicker.selectedRow(inComponent: 0)]
            let dayIndex = self.days.index(of:selectedDay)
            let indexPath = IndexPath(row: self.stuff[dayIndex!].count, section: dayIndex!)
            
            self.stuffView.insertRows(at: [indexPath], with: .automatic)
            
            self.stuff[dayIndex!].append(stuffToDo!)
            
            self.stuffView.endUpdates()
        }
        
        stuffField.text = ""
    }


}


extension ViewController: UIPickerViewDataSource, UIPickerViewDelegate {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return days.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return days[row]
    }
}


extension ViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return stuff.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let mike = tableView.dequeueReusableCell(withIdentifier: "mike", for: indexPath)
        mike.textLabel?.text = stuff[indexPath.section][indexPath.row]
        return mike
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return days[section]
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return stuff[section].count
    }
}



