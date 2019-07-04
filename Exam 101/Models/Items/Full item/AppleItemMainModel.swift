//
//	AppleItemMainModel.swift
//	Model file generated using JSONExport. Create by: Marjune

import Foundation 
import ObjectMapper

public struct AppleItemMainModel : ImmutableMappable {
	public var resultCount : Int?
	public var results : [AppleItemResult]?

	public init(map: Map) throws {
		resultCount = try? map.value("resultCount")
		results = try? map.value("results")		
	}
	mutating public func mapping(map: Map) {
		resultCount <- map["resultCount"]
		results <- map["results"]		
	}
}
