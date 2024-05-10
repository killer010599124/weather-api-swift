//
//  AddLocationVC.swift
//  Weather Demo
//
//  Created by Ankit Gabani on 24/04/24.
//

import UIKit
import Toast_Swift

class AddLocationVC: UIViewController {
    
    @IBOutlet weak var txtLocation: UITextField!
    
    // MARK: - View Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
     //   txtLocation.text = "moscow"
        // Do any additional setup after loading the view.
    }
    
    @IBAction func clickedGetWeather(_ sender: Any) {
        
        setHideToast()
        
        if txtLocation.text == ""
        {
            setMakeToast(msg: "Please enter location")
        }
        else
        {
            callGetWeatherDataAPI()
        }
    }
    
    func callGetWeatherDataAPI()
    {
        APIClient.sharedInstance.showIndicator()
        
        let param = ["":""]
        
        let endPoint = "\(self.txtLocation.text ?? "")?unitGroup=us&key=3C8TRCWYPKSPU83H6U8CJ5CUR&contentType=json"
        
        APIClient.sharedInstance.MakeAPICallWithOutAuthHeaderGet(endPoint, parameters: param) { response, error, statusCode in
            
            print("STATUS CODE \(String(describing: statusCode))")
            print("RESPONSE \(String(describing: response))")
            
            if error == nil
            {
                APIClient.sharedInstance.hideIndicator()
                
                let status = response?.value(forKey: "status") as? Int
                let message = response?.value(forKey: "message") as? String
                
                if statusCode == 200
                {
                    if  let arrDaysAPI = response?.value(forKey: "days") as? NSArray
                    {
                        if arrDaysAPI.count > 0
                        {
                            var arrDays: [WDWeatherDataDay] = [WDWeatherDataDay]()
                            
                            for obj in arrDaysAPI
                            {
                                let dicData = WDWeatherDataDay(fromDictionary: obj as! NSDictionary)
                                arrDays.append(dicData)
                            }
                            
                            let vc = self.storyboard?.instantiateViewController(withIdentifier: "WeatherShowVC") as! WeatherShowVC
                            vc.strLocatoin = self.txtLocation.text ?? ""
                            vc.arrWeatherDetails = arrDays
                            self.navigationController?.pushViewController(vc, animated: true)
                        }
                    }
                    
                }
                else
                {
                    self.setMakeToast(msg: "Invalid location parameter value.")
                    APIClient.sharedInstance.hideIndicator()
                }
            }
            else
            {
                self.setMakeToast(msg: "Invalid location parameter value.")
                APIClient.sharedInstance.hideIndicator()
            }
        }
    }
    
    func setMakeToast(msg: String)
    {
        self.view.makeToast(msg)
        let window = UIApplication.shared.windows
        window.last?.makeToast(msg)
    }
    
    func setHideToast()
    {
        self.view.hideToast()
        let window = UIApplication.shared.windows
        window.last?.hideToast()
    }
    
}
