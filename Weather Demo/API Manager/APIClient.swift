//
//  APIClient.swift
//  Weather Demo
//
//  Created by Ankit Gabani on 24/04/24.
//

import Foundation
import Alamofire
import SVProgressHUD
import UIKit
import SystemConfiguration

class APIClient: NSObject {
    
    typealias completion = ( _ result: Dictionary<String, Any>, _ error: Error?) -> ()
    
    class var sharedInstance: APIClient {
        
        struct Static {
            static let instance: APIClient = APIClient()
        }
        return Static.instance
    }
    
    var responseData: NSMutableData!
    
    func pushNetworkErrorVC()
    {
        
    }
 
    func MakeAPICallWithOutAuthHeaderGet(_ url: String, parameters: [String: Any], completionHandler:@escaping (NSDictionary?, Error?, Int?) -> Void) {
        
        print("url = \(BASE_URL + url)")
        
        if NetConnection.isConnectedToNetwork() == true
        {
            
            let headers: HTTPHeaders = ["":""]
            
            AF.request(BASE_URL + url, method:.get, parameters: parameters,encoding: URLEncoding(destination: .queryString), headers: nil) .responseJSON { (response) in
                
                switch(response.result) {
                    
                case .success:
                    if response.value != nil{
                        if let responseDict = ((response.value as AnyObject) as? NSDictionary) {
                            completionHandler(responseDict, nil, response.response?.statusCode)
                        }
                    }
                    
                case .failure:
                    print(response.error!)
                    print("Http Status Code: \(String(describing: response.response?.statusCode))")
                    completionHandler(nil, response.error, response.response?.statusCode )
                }
            }
        }
        else
        {
            APIClient.sharedInstance.hideIndicator()
            print("No Network Found!")
            pushNetworkErrorVC()
            SVProgressHUD.dismiss()
        }
    }
    
    func showIndicator(){
        DispatchQueue.main.async {
            SVProgressHUD.show()
        }
        
    }
    
    func hideIndicator(){
        DispatchQueue.main.async {
            SVProgressHUD.dismiss()
        }
        
    }
    
    func showSuccessIndicator(message: String){
        SVProgressHUD.showSuccess(withStatus: message)
    }
}


public class NetConnection {
    
    class func isConnectedToNetwork() -> Bool {
        
        var zeroAddress = sockaddr_in(sin_len: 0, sin_family: 0, sin_port: 0, sin_addr: in_addr(s_addr: 0), sin_zero: (0, 0, 0, 0, 0, 0, 0, 0))
        zeroAddress.sin_len = UInt8(MemoryLayout.size(ofValue: zeroAddress))
        zeroAddress.sin_family = sa_family_t(AF_INET)
        
        let defaultRouteReachability = withUnsafePointer(to: &zeroAddress) {
            $0.withMemoryRebound(to: sockaddr.self, capacity: 1) {zeroSockAddress in
                SCNetworkReachabilityCreateWithAddress(nil, zeroSockAddress)
            }
        }
        
        var flags: SCNetworkReachabilityFlags = SCNetworkReachabilityFlags(rawValue: 0)
        if SCNetworkReachabilityGetFlags(defaultRouteReachability!, &flags) == false {
            return false
        }
        
        /* Only Working for WIFI
         let isReachable = flags == .reachable
         let needsConnection = flags == .connectionRequired
         
         return isReachable && !needsConnection
         */
        
        // Working for Cellular and WIFI
        let isReachable = (flags.rawValue & UInt32(kSCNetworkFlagsReachable)) != 0
        let needsConnection = (flags.rawValue & UInt32(kSCNetworkFlagsConnectionRequired)) != 0
        let ret = (isReachable && !needsConnection)
        
        return ret
        
    }
    
}

