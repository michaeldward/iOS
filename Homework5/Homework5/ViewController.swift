//
//  ViewController.swift
//  Homework5
//
//  Created by Michael Ward on 2/22/17.
//  Copyright © 2017 Michael Ward. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //"68334e8c391f2c4543cfeb48d6f4561f"
    let flickrBaseAPI = "https://api.flickr.com/services/rest/?api_key=68334e8c391f2c4543cfeb48d6f4561f"
    let flickrPublicPhotosAPI = "&method=flickr.people.getPublicPhotos&format=json&per_page=1000&nojsoncallback=1&user_id="
    let flickrUserId = "59514628@N00"//"jpn"
    
    var photos = [PhotoData]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        print(flickrBaseAPI + flickrPublicPhotosAPI + flickrUserId)
        guard let url = URL(string: flickrBaseAPI + flickrPublicPhotosAPI + flickrUserId) else {
            return
        }
        let task = URLSession.shared.dataTask(with: url){
            (data, resposne, error) in
            guard let data = data,
                error == nil else{
                    return
            }
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}



extension ViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photos.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
            //as! FlickrCollectionViewCell
        
        //cell.imageView.image = nil
        //cell.photoData = photos[indexPath.row]
        
        return cell
    }
    
    
}

extension ViewController: UICollectionViewDelegate {
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        // Compute the dimension of a cell for an NxN layout with space S between
        // cells.  Take the collection view's width, subtract (N-1)*S points for
        // the spaces between the cells, and then divide by N to find the final
        // dimension for the cell's width and height.
        
        let cellsAcross: CGFloat = 3
        let spaceBetweenCells: CGFloat = 1
        let dim = (collectionView.bounds.width - (cellsAcross - 1) * spaceBetweenCells) / cellsAcross
        return CGSize(width: 200, height: 200)
    }
}
