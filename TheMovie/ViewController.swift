//
//  ViewController.swift
//  TheMovie
//
//  Created by Eduardo Mizael on 13/10/21.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var moviewImageView: UIImageView!
    @IBOutlet weak var movieTableView: UITableView!
    
    var movieList: [Movie] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configTableView()
        self.addList()
    }
    
    private func addList(){
        self.movieList.append(Movie(movieImage: UIImage(systemName: "person.circle"), movieTitle: "Dorigo o canalha", movieYear: "2019", movieGender:"Comedia"))
        self.movieList.append(Movie(movieImage: UIImage(systemName: "person.circle"), movieTitle: "Dorigo o canalha", movieYear: "2019", movieGender:"Comedia"))
        self.movieList.append(Movie(movieImage: UIImage(systemName: "person.circle"), movieTitle: "Dorigo o canalha", movieYear: "2019", movieGender:"Comedia"))
    }
    
    private func configTableView(){
        self.movieTableView.delegate = self
        self.movieTableView.dataSource = self
        self.movieTableView.register(MovieTableViewCell.nib(), forCellReuseIdentifier: MovieTableViewCell.identifier)
        self.movieTableView.register(HeaderMovieTableViewCell.nib(), forCellReuseIdentifier: HeaderMovieTableViewCell.identifier)
    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.movieList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell: MovieTableViewCell = self.movieTableView.dequeueReusableCell(withIdentifier: MovieTableViewCell.identifier, for: indexPath) as? MovieTableViewCell else{return UITableViewCell()}
        
        cell.setupCell(movieData: self.movieList[indexPath.row])
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        guard let header: HeaderMovieTableViewCell = self.movieTableView.dequeueReusableCell(withIdentifier: HeaderMovieTableViewCell.identifier) as? HeaderMovieTableViewCell else {return UITableViewCell()}
        
        header.setupHeader()
        header.backgroundColor = .black
        
        return header
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 160
    }
    
    
}

