//
//	WDWeatherDataDay.swift
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation


class WDWeatherDataDay : NSObject, NSCoding{

	var cloudcover : Double!
	var conditions : String!
	var datetime : String!
	var datetimeEpoch : Int!
	var descriptionField : String!
	var dew : Double!
	var feelslike : Double!
	var feelslikemax : Double!
	var feelslikemin : Double!
	var hours : [WDWeatherDataHour]!
	var humidity : Double!
	var icon : String!
	var moonphase : Double!
	var precip : Double!
	var precipcover : Double!
	var precipprob : Double!
	var preciptype : [String]!
	var pressure : Double!
	var severerisk : Double!
	var snow : Double!
	var snowdepth : Double!
	var solarenergy : Double!
	var solarradiation : Double!
	var source : String!
	var stations : String!
	var sunrise : String!
	var sunriseEpoch : Int!
	var sunset : String!
	var sunsetEpoch : Int!
	var temp : Double!
	var tempmax : Double!
	var tempmin : Double!
	var uvindex : Double!
	var visibility : Double!
	var winddir : Double!
	var windgust : Double!
	var windspeed : Double!


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
		cloudcover = dictionary["cloudcover"] as? Double == nil ? 0 : dictionary["cloudcover"] as? Double
		conditions = dictionary["conditions"] as? String == nil ? "" : dictionary["conditions"] as? String
		datetime = dictionary["datetime"] as? String == nil ? "" : dictionary["datetime"] as? String
		datetimeEpoch = dictionary["datetimeEpoch"] as? Int == nil ? 0 : dictionary["datetimeEpoch"] as? Int
		descriptionField = dictionary["description"] as? String == nil ? "" : dictionary["description"] as? String
		dew = dictionary["dew"] as? Double == nil ? 0 : dictionary["dew"] as? Double
		feelslike = dictionary["feelslike"] as? Double == nil ? 0 : dictionary["feelslike"] as? Double
		feelslikemax = dictionary["feelslikemax"] as? Double == nil ? 0 : dictionary["feelslikemax"] as? Double
		feelslikemin = dictionary["feelslikemin"] as? Double == nil ? 0 : dictionary["feelslikemin"] as? Double
		hours = [WDWeatherDataHour]()
		if let hoursArray = dictionary["hours"] as? [NSDictionary]{
			for dic in hoursArray{
				let value = WDWeatherDataHour(fromDictionary: dic)
				hours.append(value)
			}
		}
		humidity = dictionary["humidity"] as? Double == nil ? 0 : dictionary["humidity"] as? Double
		icon = dictionary["icon"] as? String == nil ? "" : dictionary["icon"] as? String
		moonphase = dictionary["moonphase"] as? Double == nil ? 0 : dictionary["moonphase"] as? Double
		precip = dictionary["precip"] as? Double == nil ? 0 : dictionary["precip"] as? Double
		precipcover = dictionary["precipcover"] as? Double == nil ? 0 : dictionary["precipcover"] as? Double
		precipprob = dictionary["precipprob"] as? Double == nil ? 0 : dictionary["precipprob"] as? Double
		preciptype = dictionary["preciptype"] as? [String] == nil ? [] : dictionary["preciptype"] as? [String]
		pressure = dictionary["pressure"] as? Double == nil ? 0 : dictionary["pressure"] as? Double
		severerisk = dictionary["severerisk"] as? Double == nil ? 0 : dictionary["severerisk"] as? Double
		snow = dictionary["snow"] as? Double == nil ? 0 : dictionary["snow"] as? Double
		snowdepth = dictionary["snowdepth"] as? Double == nil ? 0 : dictionary["snowdepth"] as? Double
		solarenergy = dictionary["solarenergy"] as? Double == nil ? 0 : dictionary["solarenergy"] as? Double
		solarradiation = dictionary["solarradiation"] as? Double == nil ? 0 : dictionary["solarradiation"] as? Double
		source = dictionary["source"] as? String == nil ? "" : dictionary["source"] as? String
		stations = dictionary["stations"] as? String == nil ? "" : dictionary["stations"] as? String
		sunrise = dictionary["sunrise"] as? String == nil ? "" : dictionary["sunrise"] as? String
		sunriseEpoch = dictionary["sunriseEpoch"] as? Int == nil ? 0 : dictionary["sunriseEpoch"] as? Int
		sunset = dictionary["sunset"] as? String == nil ? "" : dictionary["sunset"] as? String
		sunsetEpoch = dictionary["sunsetEpoch"] as? Int == nil ? 0 : dictionary["sunsetEpoch"] as? Int
		temp = dictionary["temp"] as? Double == nil ? 0 : dictionary["temp"] as? Double
		tempmax = dictionary["tempmax"] as? Double == nil ? 0 : dictionary["tempmax"] as? Double
		tempmin = dictionary["tempmin"] as? Double == nil ? 0 : dictionary["tempmin"] as? Double
		uvindex = dictionary["uvindex"] as? Double == nil ? 0 : dictionary["uvindex"] as? Double
		visibility = dictionary["visibility"] as? Double == nil ? 0 : dictionary["visibility"] as? Double
		winddir = dictionary["winddir"] as? Double == nil ? 0 : dictionary["winddir"] as? Double
		windgust = dictionary["windgust"] as? Double == nil ? 0 : dictionary["windgust"] as? Double
		windspeed = dictionary["windspeed"] as? Double == nil ? 0 : dictionary["windspeed"] as? Double
	}

	/**
	 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> NSDictionary
	{
		let dictionary = NSMutableDictionary()
		if cloudcover != nil{
			dictionary["cloudcover"] = cloudcover
		}
		if conditions != nil{
			dictionary["conditions"] = conditions
		}
		if datetime != nil{
			dictionary["datetime"] = datetime
		}
		if datetimeEpoch != nil{
			dictionary["datetimeEpoch"] = datetimeEpoch
		}
		if descriptionField != nil{
			dictionary["description"] = descriptionField
		}
		if dew != nil{
			dictionary["dew"] = dew
		}
		if feelslike != nil{
			dictionary["feelslike"] = feelslike
		}
		if feelslikemax != nil{
			dictionary["feelslikemax"] = feelslikemax
		}
		if feelslikemin != nil{
			dictionary["feelslikemin"] = feelslikemin
		}
		if hours != nil{
			var dictionaryElements = [NSDictionary]()
			for hoursElement in hours {
				dictionaryElements.append(hoursElement.toDictionary())
			}
			dictionary["hours"] = dictionaryElements
		}
		if humidity != nil{
			dictionary["humidity"] = humidity
		}
		if icon != nil{
			dictionary["icon"] = icon
		}
		if moonphase != nil{
			dictionary["moonphase"] = moonphase
		}
		if precip != nil{
			dictionary["precip"] = precip
		}
		if precipcover != nil{
			dictionary["precipcover"] = precipcover
		}
		if precipprob != nil{
			dictionary["precipprob"] = precipprob
		}
		if preciptype != nil{
			dictionary["preciptype"] = preciptype
		}
		if pressure != nil{
			dictionary["pressure"] = pressure
		}
		if severerisk != nil{
			dictionary["severerisk"] = severerisk
		}
		if snow != nil{
			dictionary["snow"] = snow
		}
		if snowdepth != nil{
			dictionary["snowdepth"] = snowdepth
		}
		if solarenergy != nil{
			dictionary["solarenergy"] = solarenergy
		}
		if solarradiation != nil{
			dictionary["solarradiation"] = solarradiation
		}
		if source != nil{
			dictionary["source"] = source
		}
		if stations != nil{
			dictionary["stations"] = stations
		}
		if sunrise != nil{
			dictionary["sunrise"] = sunrise
		}
		if sunriseEpoch != nil{
			dictionary["sunriseEpoch"] = sunriseEpoch
		}
		if sunset != nil{
			dictionary["sunset"] = sunset
		}
		if sunsetEpoch != nil{
			dictionary["sunsetEpoch"] = sunsetEpoch
		}
		if temp != nil{
			dictionary["temp"] = temp
		}
		if tempmax != nil{
			dictionary["tempmax"] = tempmax
		}
		if tempmin != nil{
			dictionary["tempmin"] = tempmin
		}
		if uvindex != nil{
			dictionary["uvindex"] = uvindex
		}
		if visibility != nil{
			dictionary["visibility"] = visibility
		}
		if winddir != nil{
			dictionary["winddir"] = winddir
		}
		if windgust != nil{
			dictionary["windgust"] = windgust
		}
		if windspeed != nil{
			dictionary["windspeed"] = windspeed
		}
		return dictionary
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         cloudcover = aDecoder.decodeObject(forKey: "cloudcover") as? Double
         conditions = aDecoder.decodeObject(forKey: "conditions") as? String
         datetime = aDecoder.decodeObject(forKey: "datetime") as? String
         datetimeEpoch = aDecoder.decodeObject(forKey: "datetimeEpoch") as? Int
         descriptionField = aDecoder.decodeObject(forKey: "description") as? String
         dew = aDecoder.decodeObject(forKey: "dew") as? Double
         feelslike = aDecoder.decodeObject(forKey: "feelslike") as? Double
         feelslikemax = aDecoder.decodeObject(forKey: "feelslikemax") as? Double
         feelslikemin = aDecoder.decodeObject(forKey: "feelslikemin") as? Double
         hours = aDecoder.decodeObject(forKey: "hours") as? [WDWeatherDataHour]
         humidity = aDecoder.decodeObject(forKey: "humidity") as? Double
         icon = aDecoder.decodeObject(forKey: "icon") as? String
         moonphase = aDecoder.decodeObject(forKey: "moonphase") as? Double
         precip = aDecoder.decodeObject(forKey: "precip") as? Double
         precipcover = aDecoder.decodeObject(forKey: "precipcover") as? Double
         precipprob = aDecoder.decodeObject(forKey: "precipprob") as? Double
         preciptype = aDecoder.decodeObject(forKey: "preciptype") as? [String]
         pressure = aDecoder.decodeObject(forKey: "pressure") as? Double
         severerisk = aDecoder.decodeObject(forKey: "severerisk") as? Double
         snow = aDecoder.decodeObject(forKey: "snow") as? Double
         snowdepth = aDecoder.decodeObject(forKey: "snowdepth") as? Double
         solarenergy = aDecoder.decodeObject(forKey: "solarenergy") as? Double
         solarradiation = aDecoder.decodeObject(forKey: "solarradiation") as? Double
         source = aDecoder.decodeObject(forKey: "source") as? String
         stations = aDecoder.decodeObject(forKey: "stations") as? String
         sunrise = aDecoder.decodeObject(forKey: "sunrise") as? String
         sunriseEpoch = aDecoder.decodeObject(forKey: "sunriseEpoch") as? Int
         sunset = aDecoder.decodeObject(forKey: "sunset") as? String
         sunsetEpoch = aDecoder.decodeObject(forKey: "sunsetEpoch") as? Int
         temp = aDecoder.decodeObject(forKey: "temp") as? Double
         tempmax = aDecoder.decodeObject(forKey: "tempmax") as? Double
         tempmin = aDecoder.decodeObject(forKey: "tempmin") as? Double
         uvindex = aDecoder.decodeObject(forKey: "uvindex") as? Double
         visibility = aDecoder.decodeObject(forKey: "visibility") as? Double
         winddir = aDecoder.decodeObject(forKey: "winddir") as? Double
         windgust = aDecoder.decodeObject(forKey: "windgust") as? Double
         windspeed = aDecoder.decodeObject(forKey: "windspeed") as? Double

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    public func encode(with aCoder: NSCoder) 
	{
		if cloudcover != nil{
			aCoder.encode(cloudcover, forKey: "cloudcover")
		}
		if conditions != nil{
			aCoder.encode(conditions, forKey: "conditions")
		}
		if datetime != nil{
			aCoder.encode(datetime, forKey: "datetime")
		}
		if datetimeEpoch != nil{
			aCoder.encode(datetimeEpoch, forKey: "datetimeEpoch")
		}
		if descriptionField != nil{
			aCoder.encode(descriptionField, forKey: "description")
		}
		if dew != nil{
			aCoder.encode(dew, forKey: "dew")
		}
		if feelslike != nil{
			aCoder.encode(feelslike, forKey: "feelslike")
		}
		if feelslikemax != nil{
			aCoder.encode(feelslikemax, forKey: "feelslikemax")
		}
		if feelslikemin != nil{
			aCoder.encode(feelslikemin, forKey: "feelslikemin")
		}
		if hours != nil{
			aCoder.encode(hours, forKey: "hours")
		}
		if humidity != nil{
			aCoder.encode(humidity, forKey: "humidity")
		}
		if icon != nil{
			aCoder.encode(icon, forKey: "icon")
		}
		if moonphase != nil{
			aCoder.encode(moonphase, forKey: "moonphase")
		}
		if precip != nil{
			aCoder.encode(precip, forKey: "precip")
		}
		if precipcover != nil{
			aCoder.encode(precipcover, forKey: "precipcover")
		}
		if precipprob != nil{
			aCoder.encode(precipprob, forKey: "precipprob")
		}
		if preciptype != nil{
			aCoder.encode(preciptype, forKey: "preciptype")
		}
		if pressure != nil{
			aCoder.encode(pressure, forKey: "pressure")
		}
		if severerisk != nil{
			aCoder.encode(severerisk, forKey: "severerisk")
		}
		if snow != nil{
			aCoder.encode(snow, forKey: "snow")
		}
		if snowdepth != nil{
			aCoder.encode(snowdepth, forKey: "snowdepth")
		}
		if solarenergy != nil{
			aCoder.encode(solarenergy, forKey: "solarenergy")
		}
		if solarradiation != nil{
			aCoder.encode(solarradiation, forKey: "solarradiation")
		}
		if source != nil{
			aCoder.encode(source, forKey: "source")
		}
		if stations != nil{
			aCoder.encode(stations, forKey: "stations")
		}
		if sunrise != nil{
			aCoder.encode(sunrise, forKey: "sunrise")
		}
		if sunriseEpoch != nil{
			aCoder.encode(sunriseEpoch, forKey: "sunriseEpoch")
		}
		if sunset != nil{
			aCoder.encode(sunset, forKey: "sunset")
		}
		if sunsetEpoch != nil{
			aCoder.encode(sunsetEpoch, forKey: "sunsetEpoch")
		}
		if temp != nil{
			aCoder.encode(temp, forKey: "temp")
		}
		if tempmax != nil{
			aCoder.encode(tempmax, forKey: "tempmax")
		}
		if tempmin != nil{
			aCoder.encode(tempmin, forKey: "tempmin")
		}
		if uvindex != nil{
			aCoder.encode(uvindex, forKey: "uvindex")
		}
		if visibility != nil{
			aCoder.encode(visibility, forKey: "visibility")
		}
		if winddir != nil{
			aCoder.encode(winddir, forKey: "winddir")
		}
		if windgust != nil{
			aCoder.encode(windgust, forKey: "windgust")
		}
		if windspeed != nil{
			aCoder.encode(windspeed, forKey: "windspeed")
		}

	}

}
