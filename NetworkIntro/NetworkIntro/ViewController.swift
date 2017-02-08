//
//  ViewController.swift
//  NetworkIntro
//
//  Created by Michael Ward on 1/27/17.
//  Copyright © 2017 Michael Ward. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var counterLabel: UILabel!
    
    let ImageUrlString = "https://i.ytimg.com/vi/uIcYYaU80HM/hqdefault.jpg"
    
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        counterLabel.text = "0"
        //DON'T DO THIS - bogs down main queue
        if let url = URL(string: ImageUrlString),
            let data = try? Data(contentsOf: url){
            //imageView.image = UIImage(data: data)
        }
        requestImage(urlString: ImageUrlString)
        
    }
    
    func requestImage(urlString: String) {
        if let url = URL(string: urlString) {
            let task = URLSession.shared.dataTask(with: url) {
                (data, response, error) in
                guard let data = data, error == nil else {
                    return
                }
                DispatchQueue.main.async {
                    self.imageView.image = UIImage(data: data)
                }
            }
            task.resume()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonClick(_ sender: Any) {
        counterLabel.text = "\(counter)"
        counter += 1
    }

}

