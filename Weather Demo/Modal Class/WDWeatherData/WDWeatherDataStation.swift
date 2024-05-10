//
//	WDWeatherDataStation.swift
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation


class WDWeatherDataStation : NSObject, NSCoding{

	var d3940 : WDWeatherDataD3940!
	var e8051 : WDWeatherDataD3940!
	var uUEE : WDWeatherDataD3940!
	var uUMO : WDWeatherDataD3940!
	var uUWW : WDWeatherDataD3940!


	/**
	 * Overiding init method
	 */
	init(fromDictionary dictionary: NSDictionary)
	{
		super.init()
		parseJSONData(fromDictionary: dictionary)
	}

	/**
	 * Overiding init method
	 */
	override init(){
	}

	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	@objc func parseJSONData(fromDictionary dictionary: NSDictionary)
	{
		if let d3940Data = dictionary["D3940"] as? NSDictionary{
			d3940 = WDWeatherDataD3940(fromDictionary: d3940Data)
		}
		else
		{
			d3940 = WDWeatherDataD3940(fromDictionary: NSDictionary.init())
		}
		if let e8051Data = dictionary["E8051"] as? NSDictionary{
			e8051 = WDWeatherDataD3940(fromDictionary: e8051Data)
		}
		else
		{
			e8051 = WDWeatherDataD3940(fromDictionary: NSDictionary.init())
		}
		if let uUEEData = dictionary["UUEE"] as? NSDictionary{
			uUEE = WDWeatherDataD3940(fromDictionary: uUEEData)
		}
		else
		{
			uUEE = WDWeatherDataD3940(fromDictionary: NSDictionary.init())
		}
		if let uUMOData = dictionary["UUMO"] as? NSDictionary{
			uUMO = WDWeatherDataD3940(fromDictionary: uUMOData)
		}
		else
		{
			uUMO = WDWeatherDataD3940(fromDictionary: NSDictionary.init())
		}
		if let uUWWData = dictionary["UUWW"] as? NSDictionary{
			uUWW = WDWeatherDataD3940(fromDictionary: uUWWData)
		}
		else
		{
			uUWW = WDWeatherDataD3940(fromDictionary: NSDictionary.init())
		}
	}

	/**
	 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> NSDictionary
	{
		let dictionary = NSMutableDictionary()
		if d3940 != nil{
			dictionary["D3940"] = d3940.toDictionary()
		}
		if e8051 != nil{
			dictionary["E8051"] = e8051.toDictionary()
		}
		if uUEE != nil{
			dictionary["UUEE"] = uUEE.toDictionary()
		}
		if uUMO != nil{
			dictionary["UUMO"] = uUMO.toDictionary()
		}
		if uUWW != nil{
			dictionary["UUWW"] = uUWW.toDictionary()
		}
		return dictionary
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         d3940 = aDecoder.decodeObject(forKey: "D3940") as? WDWeatherDataD3940
         e8051 = aDecoder.decodeObject(forKey: "E8051") as? WDWeatherDataD3940
         uUEE = aDecoder.decodeObject(forKey: "UUEE") as? WDWeatherDataD3940
         uUMO = aDecoder.decodeObject(forKey: "UUMO") as? WDWeatherDataD3940
         uUWW = aDecoder.decodeObject(forKey: "UUWW") as? WDWeatherDataD3940

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    public func encode(with aCoder: NSCoder) 
	{
		if d3940 != nil{
			aCoder.encode(d3940, forKey: "D3940")
		}
		if e8051 != nil{
			aCoder.encode(e8051, forKey: "E8051")
		}
		if uUEE != nil{
			aCoder.encode(uUEE, forKey: "UUEE")
		}
		if uUMO != nil{
			aCoder.encode(uUMO, forKey: "UUMO")
		}
		if uUWW != nil{
			aCoder.encode(uUWW, forKey: "UUWW")
		}

	}

}