//
//	ModelResult.swift
//	Model file generated using JSONExport. Create by: Chonex

import Foundation
import CoreData
import ObjectMapper

@objc (ModelResult)
public class ModelResult: NSManagedObject {
    
	@NSManaged public var artworkUrl100 : String!
	@NSManaged public var currency : String!
	@NSManaged public var primaryGenreName : String!
    @NSManaged public var longDescription : String!
	@NSManaged public var trackId : String!
	@NSManaged public var trackName : String!
	@NSManaged public var trackPrice : Float
    /**
     * Instantiate the instance using the passed dictionary values to set the properties values
     */
    public init(fromDictionary dictionary: [String:Any], context: NSManagedObjectContext)    {
        let entity = NSEntityDescription.entity(forEntityName: "ModelResult", in: context)!
        super.init(entity: entity, insertInto: context)
        if let artworkUrl100Value = dictionary["artworkUrl100"] as? String{
            artworkUrl100 = artworkUrl100Value
        }
        if let currencyValue = dictionary["currency"] as? String{
            currency = currencyValue
        }
        if let primaryGenreNameValue = dictionary["primaryGenreName"] as? String{
            primaryGenreName = primaryGenreNameValue
        }
        if let longDescriptionValue = dictionary["longDescription"] as? String {
            longDescription = longDescriptionValue
        }
        if let trackIdValue = dictionary["trackId"] as? Int {
            trackId = "\(trackIdValue)"
        }
        if let trackNameValue = dictionary["trackName"] as? String{
            trackName = trackNameValue
        }
        if let trackPriceValue = dictionary["trackPrice"] as? Float{
            trackPrice = trackPriceValue
        }
        try? context.save()
    }
    @objc
    private override init(entity: NSEntityDescription, insertInto context: NSManagedObjectContext?) {
        super.init(entity: entity, insertInto: context)
    }
}

extension ModelResult {
    public static func getData() -> [ModelResult] {
        guard let context = NSManagedObjectContext.context() else { return [] }
        let fetchRequest = NSFetchRequest<ModelResult>(entityName: "ModelResult")
        guard let data = try? context.fetch(fetchRequest) else { return [] }
        return data
    }
}
