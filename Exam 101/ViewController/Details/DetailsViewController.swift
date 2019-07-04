//
//  DetailsViewController.swift
//  Exam 101
//
//  Created by chonex on 4/7/19.
//  Copyright © 2019 Marjune. All rights reserved.
//

import UIKit
import SDWebImage

class DetailsViewController: UIViewController {
    @IBOutlet weak var labelDesc: UILabel!
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var imageViewBanner: UIImageView!
    var viewModel = DetailsViewModel()
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Details"
        prepareDisplay()
    }
}

extension DetailsViewController {
    fileprivate func prepareDisplay() {
        labelTitle.text = viewModel.data?.trackName
        labelDesc.text  = viewModel.data?.longDescription
        imageViewBanner.sd_setImage(with: viewModel.data?.artworkUrl100?.toUrl(),
                                    placeholderImage: UIImage(named: "placeholder"),
                                    options: .continueInBackground)
    }
}
