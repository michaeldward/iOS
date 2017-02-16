//
//  ViewController.swift
//  Homework3New
//
//  Created by Michael Ward on 2/15/17.
//  Copyright © 2017 Michael Ward. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var tableData = [Note]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableData.append(Note(newTitle: "Eric", newText: "skateboard"))
        tableData.append(Note(newTitle: "Michael", newText: "crutches"))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func unwindToMainMenu(_ sender: UIStoryboardSegue) {
        
    }

}

extension ViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = tableData[indexPath.row].title
        
        return cell
    }
}

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let noteVC = storyboard?.instantiateViewController(withIdentifier: "noteViewController") as? NoteViewController {
            noteVC.title = tableData[indexPath.row].title
            noteVC.noteText = tableData[indexPath.row].text
            navigationController?.pushViewController(noteVC, animated: true)
        }
    }
}

