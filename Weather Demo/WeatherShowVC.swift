//
//  WeatherShowVC.swift
//  Weather Demo
//
//  Created by Ankit Gabani on 24/04/24.
//

import UIKit

class WeatherShowVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    // MARK: - IBOutlet
    @IBOutlet weak var tblView: UITableView!
    @IBOutlet weak var lblAddressLocation: UILabel!
    
    var strLocatoin = ""
    var arrWeatherDetails: [WDWeatherDataDay] = [WDWeatherDataDay]()
 
    // MARK: - View Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblAddressLocation.text = "Address: \(strLocatoin)"
        
        tblView.delegate = self
        tblView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrWeatherDetails.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tblView.dequeueReusableCell(withIdentifier: "WeatherShowCell") as! WeatherShowCell
        
        let dicWeather = arrWeatherDetails[indexPath.row]
        
        cell.lblDate.text = dicWeather.datetime ?? ""
        
        let temp = dicWeather.temp ?? 0.0
        let feelslike = dicWeather.feelslike ?? 0.0
        let humidity = dicWeather.humidity ?? 0.0
        let precip = dicWeather.precip ?? 0.0
        let dew = dicWeather.dew ?? 0.0
        let windgust = dicWeather.windgust ?? 0.0
        let windspeed = dicWeather.windspeed ?? 0.0
        let winddir = dicWeather.winddir ?? 0.0
        let pressure = dicWeather.pressure ?? 0.0
        let cloudcover = dicWeather.cloudcover ?? 0.0
        let visibility = dicWeather.visibility ?? 0.0
        let solarradiation = dicWeather.solarradiation ?? 0.0
        let solarenergy = dicWeather.solarenergy ?? 0.0
        let uvindex = dicWeather.uvindex ?? 0.0
        let severerisk = dicWeather.severerisk ?? 0.0
        let conditions = dicWeather.conditions ?? ""
        let icon = dicWeather.icon ?? ""
        
        cell.lblWeatherDetails.text = "Temperature: \(temp)°C\nFeels Like: \(feelslike)°C\nHumidity: \(humidity)%\nprecipitation: \(precip)\nDew Point: \(dew)\nWind Gust: \(windgust)\nWind Speed: \(windspeed)\nWind Direction: \(winddir)\nPressure: \(pressure)\nCloud Cover: \(cloudcover)\nVisibility: \(visibility)\nSolar Radiation: \(solarradiation)\nSolar Energy: \(solarenergy)\nUV Index: \(uvindex)\nSevere Risk: \(severerisk)\nConditions: \(conditions)\nIcon: \(icon)"
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    // MARK: - Action Method
    @IBAction func clickedBack(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
 }


// MARK: - TableView Cell
class WeatherShowCell: UITableViewCell {

    @IBOutlet weak var lblDate: UILabel!
    @IBOutlet weak var lblWeatherDetails: UILabel!
        
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
