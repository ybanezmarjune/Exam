//
//  ListItemCell.swift
//  Exam 101
//
//  Created by chonex on 4/7/19.
//  Copyright © 2019 Marjune. All rights reserved.
//

import UIKit
import SDWebImage

class ListItemCell: UITableViewCell {
    @IBOutlet weak var labelLastViewed: UILabel!
    @IBOutlet weak var labelCurrency: UILabel!
    @IBOutlet weak var labelGenre: UILabel!
    @IBOutlet weak var labelPrice: UILabel!
    @IBOutlet weak var labelTrackName: UILabel!
    @IBOutlet weak var imageViewArtwork: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    override func prepareForReuse() {
        super.prepareForReuse()
        imageViewArtwork.image = UIImage(named: "placeholder")
        labelTrackName.text    = nil
        labelCurrency.text     = nil
        labelPrice.text        = nil
        labelGenre.text        = nil
        labelLastViewed.text   = nil
    }
}

extension ListItemCell {
    func setDisplay(with item: ModelResult) {
        imageViewArtwork.sd_setImage(with: item.artworkUrl100?.toUrl(),
                                     placeholderImage: UIImage(named: "placeholder"),
                                     options: .continueInBackground)
        labelTrackName.text = item.trackName
        labelCurrency.text  = item.currency
        labelPrice.text     = item.trackPrice.toString()
        labelGenre.text     = item.primaryGenreName
        if let id = item.trackId, let lastViewed = Default().get(.lastViewed(id: id)) as? Date {
            labelLastViewed.text = "Last view: \(lastViewed.lastViewFormat())"
        }
    }
}
