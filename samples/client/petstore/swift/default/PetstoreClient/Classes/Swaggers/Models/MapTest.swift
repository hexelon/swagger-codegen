//
// MapTest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class MapTest: JSONEncodable {
    public enum MapOfEnumString: String { 
        case upper = "UPPER"
        case lower = "lower"
    }
    public var mapMapOfString: [String:[String:String]]?
    public var mapOfEnumString: [String:String]?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["map_map_of_string"] = self.mapMapOfString?.encodeToJSON()
        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
