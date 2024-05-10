//
//	WDWeatherDataD3940.swift
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation


class WDWeatherDataD3940 : NSObject, NSCoding{

	var contribution : Double!
	var distance : Double!
	var id : String!
	var latitude : Double!
	var longitude : Double!
	var name : String!
	var quality : Int!
	var useCount : Int!


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
		contribution = dictionary["contribution"] as? Double == nil ? 0 : dictionary["contribution"] as? Double
		distance = dictionary["distance"] as? Double == nil ? 0 : dictionary["distance"] as? Double
		id = dictionary["id"] as? String == nil ? "" : dictionary["id"] as? String
		latitude = dictionary["latitude"] as? Double == nil ? 0 : dictionary["latitude"] as? Double
		longitude = dictionary["longitude"] as? Double == nil ? 0 : dictionary["longitude"] as? Double
		name = dictionary["name"] as? String == nil ? "" : dictionary["name"] as? String
		quality = dictionary["quality"] as? Int == nil ? 0 : dictionary["quality"] as? Int
		useCount = dictionary["useCount"] as? Int == nil ? 0 : dictionary["useCount"] as? Int
	}

	/**
	 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> NSDictionary
	{
		let dictionary = NSMutableDictionary()
		if contribution != nil{
			dictionary["contribution"] = contribution
		}
		if distance != nil{
			dictionary["distance"] = distance
		}
		if id != nil{
			dictionary["id"] = id
		}
		if latitude != nil{
			dictionary["latitude"] = latitude
		}
		if longitude != nil{
			dictionary["longitude"] = longitude
		}
		if name != nil{
			dictionary["name"] = name
		}
		if quality != nil{
			dictionary["quality"] = quality
		}
		if useCount != nil{
			dictionary["useCount"] = useCount
		}
		return dictionary
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         contribution = aDecoder.decodeObject(forKey: "contribution") as? Double
         distance = aDecoder.decodeObject(forKey: "distance") as? Double
         id = aDecoder.decodeObject(forKey: "id") as? String
         latitude = aDecoder.decodeObject(forKey: "latitude") as? Double
         longitude = aDecoder.decodeObject(forKey: "longitude") as? Double
         name = aDecoder.decodeObject(forKey: "name") as? String
         quality = aDecoder.decodeObject(forKey: "quality") as? Int
         useCount = aDecoder.decodeObject(forKey: "useCount") as? Int

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    public func encode(with aCoder: NSCoder) 
	{
		if contribution != nil{
			aCoder.encode(contribution, forKey: "contribution")
		}
		if distance != nil{
			aCoder.encode(distance, forKey: "distance")
		}
		if id != nil{
			aCoder.encode(id, forKey: "id")
		}
		if latitude != nil{
			aCoder.encode(latitude, forKey: "latitude")
		}
		if longitude != nil{
			aCoder.encode(longitude, forKey: "longitude")
		}
		if name != nil{
			aCoder.encode(name, forKey: "name")
		}
		if quality != nil{
			aCoder.encode(quality, forKey: "quality")
		}
		if useCount != nil{
			aCoder.encode(useCount, forKey: "useCount")
		}

	}

}
