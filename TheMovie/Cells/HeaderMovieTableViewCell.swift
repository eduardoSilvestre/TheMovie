//
//  HeaderMovieTableViewCell.swift
//  TheMovie
//
//  Created by Eduardo Mizael on 14/10/21.
//

import UIKit

class HeaderMovieTableViewCell: UITableViewCell {

    @IBOutlet weak var titleNameLabel: UILabel!
    @IBOutlet weak var heartLikeImageView: UIImageView!
    @IBOutlet weak var likeLabel: UILabel!
    @IBOutlet weak var iconWatchedImageView: UIImageView!
    @IBOutlet weak var watchedLabel: UILabel!
    @IBOutlet weak var likeImageView: UIButton!
    
    
    static let identifier: String = "HeaderMovieTableViewCell"
    
    static func nib() -> UINib{
        return UINib(nibName: self.identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    public func setupHeader(){
        self.titleNameLabel.text = "The good Dorigo"
        self.likeLabel.text = "10.5K Likes"
        self.watchedLabel.text = "10 of 10 Watched"
    }
}
