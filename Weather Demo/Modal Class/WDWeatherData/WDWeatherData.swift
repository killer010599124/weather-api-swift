//
//	WDWeatherData.swift
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation


class WDWeatherData : NSObject, NSCoding{

	var address : String!
	var alerts : [String]!
	var currentConditions : WDWeatherDataCurrentCondition!
	var days : [WDWeatherDataDay]!
	var descriptionField : String!
	var latitude : Double!
	var longitude : Double!
	var queryCost : Int!
	var resolvedAddress : String!
	var stations : WDWeatherDataStation!
	var timezone : String!
	var tzoffset : Double!


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
		address = dictionary["address"] as? String == nil ? "" : dictionary["address"] as? String
		alerts = dictionary["alerts"] as? [String] == nil ? [] : dictionary["alerts"] as? [String]
		if let currentConditionsData = dictionary["currentConditions"] as? NSDictionary{
			currentConditions = WDWeatherDataCurrentCondition(fromDictionary: currentConditionsData)
		}
		else
		{
			currentConditions = WDWeatherDataCurrentCondition(fromDictionary: NSDictionary.init())
		}
		days = [WDWeatherDataDay]()
		if let daysArray = dictionary["days"] as? [NSDictionary]{
			for dic in daysArray{
				let value = WDWeatherDataDay(fromDictionary: dic)
				days.append(value)
			}
		}
		descriptionField = dictionary["description"] as? String == nil ? "" : dictionary["description"] as? String
		latitude = dictionary["latitude"] as? Double == nil ? 0 : dictionary["latitude"] as? Double
		longitude = dictionary["longitude"] as? Double == nil ? 0 : dictionary["longitude"] as? Double
		queryCost = dictionary["queryCost"] as? Int == nil ? 0 : dictionary["queryCost"] as? Int
		resolvedAddress = dictionary["resolvedAddress"] as? String == nil ? "" : dictionary["resolvedAddress"] as? String
		if let stationsData = dictionary["stations"] as? NSDictionary{
			stations = WDWeatherDataStation(fromDictionary: stationsData)
		}
		else
		{
			stations = WDWeatherDataStation(fromDictionary: NSDictionary.init())
		}
		timezone = dictionary["timezone"] as? String == nil ? "" : dictionary["timezone"] as? String
		tzoffset = dictionary["tzoffset"] as? Double == nil ? 0 : dictionary["tzoffset"] as? Double
	}

	/**
	 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> NSDictionary
	{
		let dictionary = NSMutableDictionary()
		if address != nil{
			dictionary["address"] = address
		}
		if alerts != nil{
			dictionary["alerts"] = alerts
		}
		if currentConditions != nil{
			dictionary["currentConditions"] = currentConditions.toDictionary()
		}
		if days != nil{
			var dictionaryElements = [NSDictionary]()
			for daysElement in days {
				dictionaryElements.append(daysElement.toDictionary())
			}
			dictionary["days"] = dictionaryElements
		}
		if descriptionField != nil{
			dictionary["description"] = descriptionField
		}
		if latitude != nil{
			dictionary["latitude"] = latitude
		}
		if longitude != nil{
			dictionary["longitude"] = longitude
		}
		if queryCost != nil{
			dictionary["queryCost"] = queryCost
		}
		if resolvedAddress != nil{
			dictionary["resolvedAddress"] = resolvedAddress
		}
		if stations != nil{
			dictionary["stations"] = stations.toDictionary()
		}
		if timezone != nil{
			dictionary["timezone"] = timezone
		}
		if tzoffset != nil{
			dictionary["tzoffset"] = tzoffset
		}
		return dictionary
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         address = aDecoder.decodeObject(forKey: "address") as? String
         alerts = aDecoder.decodeObject(forKey: "alerts") as? [String]
         currentConditions = aDecoder.decodeObject(forKey: "currentConditions") as? WDWeatherDataCurrentCondition
         days = aDecoder.decodeObject(forKey: "days") as? [WDWeatherDataDay]
         descriptionField = aDecoder.decodeObject(forKey: "description") as? String
         latitude = aDecoder.decodeObject(forKey: "latitude") as? Double
         longitude = aDecoder.decodeObject(forKey: "longitude") as? Double
         queryCost = aDecoder.decodeObject(forKey: "queryCost") as? Int
         resolvedAddress = aDecoder.decodeObject(forKey: "resolvedAddress") as? String
         stations = aDecoder.decodeObject(forKey: "stations") as? WDWeatherDataStation
         timezone = aDecoder.decodeObject(forKey: "timezone") as? String
         tzoffset = aDecoder.decodeObject(forKey: "tzoffset") as? Double

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    public func encode(with aCoder: NSCoder) 
	{
		if address != nil{
			aCoder.encode(address, forKey: "address")
		}
		if alerts != nil{
			aCoder.encode(alerts, forKey: "alerts")
		}
		if currentConditions != nil{
			aCoder.encode(currentConditions, forKey: "currentConditions")
		}
		if days != nil{
			aCoder.encode(days, forKey: "days")
		}
		if descriptionField != nil{
			aCoder.encode(descriptionField, forKey: "description")
		}
		if latitude != nil{
			aCoder.encode(latitude, forKey: "latitude")
		}
		if longitude != nil{
			aCoder.encode(longitude, forKey: "longitude")
		}
		if queryCost != nil{
			aCoder.encode(queryCost, forKey: "queryCost")
		}
		if resolvedAddress != nil{
			aCoder.encode(resolvedAddress, forKey: "resolvedAddress")
		}
		if stations != nil{
			aCoder.encode(stations, forKey: "stations")
		}
		if timezone != nil{
			aCoder.encode(timezone, forKey: "timezone")
		}
		if tzoffset != nil{
			aCoder.encode(tzoffset, forKey: "tzoffset")
		}

	}

}
