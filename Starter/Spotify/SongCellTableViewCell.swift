//
//  SongCellTableViewCell.swift
//  Spotify
//
//  Created by Michael Ward on 2/7/17.
//  Copyright © 2017 USU. All rights reserved.
//

import UIKit

class SongCellTableViewCell: UITableViewCell {

    @IBOutlet weak var AlbumImage: UIImageView!
    
    @IBOutlet weak var SongName: UILabel!
    
    @IBOutlet weak var ArtistName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
