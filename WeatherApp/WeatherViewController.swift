//
//  WeatherViewController.swift
//  WeatherApp
//
//  Created by Daniel Yamrak on 26.05.2021.
//

import UIKit

class WeatherViewController: UIViewController {

    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {

        super.viewDidLoad()

        cityLabel.text = "Los Angeles"
        subtitleLabel.text = "There are warm sunny weather"
        temperatureLabel.text = "28.5° C"
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    

}

extension WeatherViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 7
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "weatherCellID")
        
        
        return cell
    }
}
