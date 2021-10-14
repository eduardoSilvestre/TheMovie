//
//  MovieTableViewCell.swift
//  TheMovie
//
//  Created by Eduardo Mizael on 13/10/21.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    
    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var movieNameLabel: UILabel!
    @IBOutlet weak var movieYearLabel: UILabel!
    @IBOutlet weak var movieGenderLabel: UILabel!
    
    
    static let identifier: String = "MovieTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: self.identifier, bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    public func setupCell(movieData: Movie){
        self.movieImageView.image = movieData.movieImage
        self.movieNameLabel.text = movieData.movieTitle
        self.movieYearLabel.text = movieData.movieYear
        self.movieGenderLabel.text = movieData.movieGender
        
        
    }

    
}
