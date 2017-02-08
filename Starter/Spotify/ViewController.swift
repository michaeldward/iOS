//
//  ViewController.swift
//  Spotify
//
//  Created by Brad Richardson on 1/29/16.
//  Copyright © 2016 USU. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!

    var tableData = [SpotifyTrack]()
    var player: AVPlayer?
    var mostRecentQuery = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.rowHeight = 120.0
        tableView.register(UINib(nibName: "SongCellTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
        // Make audio from the app play as music
        do {
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
        } catch {
            return
        }
        
    }
}

extension ViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        mostRecentQuery = searchText
        SpotifyManager.search(query: searchText) {
            (tracks: [SpotifyTrack], queryUsed: String) in
            guard queryUsed == self.mostRecentQuery else {
                // Ignoring result because it isn't the most recent
                return
            }
            // Update data
            self.tableData = tracks
            self.tableView.reloadData()
        }
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! SongCellTableViewCell
        
        cell.SongName?.text = tableData[indexPath.row].title
        cell.ArtistName?.text = tableData[indexPath.row].artist
        if let urlStr = URL(string:tableData[indexPath.row].imageUrl) {
            let task = URLSession.shared.dataTask(with: urlStr) {
                (data, response, error) in
                guard let data = data, error == nil else {
                    return
                }
                DispatchQueue.main.async {
                    cell.AlbumImage?.image = UIImage(data: data)
                }
            }
            task.resume()
        }
        return cell
    }
    
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // Play song preview when cell is selected
        guard let url = URL(string: tableData[indexPath.row].previewUrl) else {
            return
        }
        player = AVPlayer(url: url)
        if let player = player {
            player.play()
        }
    }
}


