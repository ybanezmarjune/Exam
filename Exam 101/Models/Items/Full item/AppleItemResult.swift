//
//	AppleItemResult.swift
//	Model file generated using JSONExport. Create by: Marjune

import Foundation 
import ObjectMapper

public struct AppleItemResult : ImmutableMappable {
	public var amgArtistId : Int?
	public var artistId : Int?
	public var artistName : String?
	public var artistViewUrl : String?
	public var artworkUrl100 : String?
	public var artworkUrl30 : String?
	public var artworkUrl60 : String?
	public var artworkUrl600 : String?
	public var collectionArtistId : Int?
	public var collectionArtistName : String?
	public var collectionArtistViewUrl : String?
	public var collectionCensoredName : String?
	public var collectionExplicitness : String?
	public var collectionHdPrice : Float?
	public var collectionId : Int?
	public var collectionName : String?
	public var collectionPrice : Float?
	public var collectionViewUrl : String?
	public var contentAdvisoryRating : String?
	public var copyright : String?
	public var country : String?
	public var currency : String?
	public var descriptionField : String?
	public var discCount : Int?
	public var discNumber : Int?
	public var feedUrl : String?
	public var genreIds : [String]?
	public var genres : [String]?
	public var hasITunesExtras : Bool?
	public var isStreamable : Bool?
	public var kind : String?
	public var longDescription : String?
	public var previewUrl : String?
	public var primaryGenreName : String?
	public var releaseDate : String?
	public var shortDescription : String?
	public var trackCensoredName : String?
	public var trackCount : Int?
	public var trackExplicitness : String?
	public var trackHdPrice : Float?
	public var trackHdRentalPrice : Float?
	public var trackId : Int?
	public var trackName : String?
	public var trackNumber : Int?
	public var trackPrice : Float?
	public var trackRentalPrice : Float?
	public var trackTimeMillis : Int?
	public var trackViewUrl : String?
	public var wrapperType : String?

    public init(map: Map) throws {
		amgArtistId = try? map.value("amgArtistId")
		artistId = try? map.value("artistId")
		artistName = try? map.value("artistName")
		artistViewUrl = try? map.value("artistViewUrl")
		artworkUrl100 = try? map.value("artworkUrl100")
		artworkUrl30 = try? map.value("artworkUrl30")
		artworkUrl60 = try? map.value("artworkUrl60")
		artworkUrl600 = try? map.value("artworkUrl600")
		collectionArtistId = try? map.value("collectionArtistId")
		collectionArtistName = try? map.value("collectionArtistName")
		collectionArtistViewUrl = try? map.value("collectionArtistViewUrl")
		collectionCensoredName = try? map.value("collectionCensoredName")
		collectionExplicitness = try? map.value("collectionExplicitness")
		collectionHdPrice = try? map.value("collectionHdPrice")
		collectionId = try? map.value("collectionId")
		collectionName = try? map.value("collectionName")
		collectionPrice = try? map.value("collectionPrice")
		collectionViewUrl = try? map.value("collectionViewUrl")
		contentAdvisoryRating = try? map.value("contentAdvisoryRating")
		copyright = try? map.value("copyright")
		country = try? map.value("country")
		currency = try? map.value("currency")
		descriptionField = try? map.value("description")
		discCount = try? map.value("discCount")
		discNumber = try? map.value("discNumber")
		feedUrl = try? map.value("feedUrl")
		genreIds = try? map.value("genreIds")
		genres = try? map.value("genres")
		hasITunesExtras = try? map.value("hasITunesExtras")
		isStreamable = try? map.value("isStreamable")
		kind = try? map.value("kind")
		longDescription = try? map.value("longDescription")
		previewUrl = try? map.value("previewUrl")
		primaryGenreName = try? map.value("primaryGenreName")
		releaseDate = try? map.value("releaseDate")
		shortDescription = try? map.value("shortDescription")
		trackCensoredName = try? map.value("trackCensoredName")
		trackCount = try? map.value("trackCount")
		trackExplicitness = try? map.value("trackExplicitness")
		trackHdPrice = try? map.value("trackHdPrice")
		trackHdRentalPrice = try? map.value("trackHdRentalPrice")
		trackId = try? map.value("trackId")
		trackName = try? map.value("trackName")
		trackNumber = try? map.value("trackNumber")
		trackPrice = try? map.value("trackPrice")
		trackRentalPrice = try? map.value("trackRentalPrice")
		trackTimeMillis = try? map.value("trackTimeMillis")
		trackViewUrl = try? map.value("trackViewUrl")
		wrapperType = try? map.value("wrapperType")		
	}
    mutating public func mapping(map: Map) {
		amgArtistId <- map["amgArtistId"]
		artistId <- map["artistId"]
		artistName <- map["artistName"]
		artistViewUrl <- map["artistViewUrl"]
		artworkUrl100 <- map["artworkUrl100"]
		artworkUrl30 <- map["artworkUrl30"]
		artworkUrl60 <- map["artworkUrl60"]
		artworkUrl600 <- map["artworkUrl600"]
		collectionArtistId <- map["collectionArtistId"]
		collectionArtistName <- map["collectionArtistName"]
		collectionArtistViewUrl <- map["collectionArtistViewUrl"]
		collectionCensoredName <- map["collectionCensoredName"]
		collectionExplicitness <- map["collectionExplicitness"]
		collectionHdPrice <- map["collectionHdPrice"]
		collectionId <- map["collectionId"]
		collectionName <- map["collectionName"]
		collectionPrice <- map["collectionPrice"]
		collectionViewUrl <- map["collectionViewUrl"]
		contentAdvisoryRating <- map["contentAdvisoryRating"]
		copyright <- map["copyright"]
		country <- map["country"]
		currency <- map["currency"]
		descriptionField <- map["description"]
		discCount <- map["discCount"]
		discNumber <- map["discNumber"]
		feedUrl <- map["feedUrl"]
		genreIds <- map["genreIds"]
		genres <- map["genres"]
		hasITunesExtras <- map["hasITunesExtras"]
		isStreamable <- map["isStreamable"]
		kind <- map["kind"]
		longDescription <- map["longDescription"]
		previewUrl <- map["previewUrl"]
		primaryGenreName <- map["primaryGenreName"]
		releaseDate <- map["releaseDate"]
		shortDescription <- map["shortDescription"]
		trackCensoredName <- map["trackCensoredName"]
		trackCount <- map["trackCount"]
		trackExplicitness <- map["trackExplicitness"]
		trackHdPrice <- map["trackHdPrice"]
		trackHdRentalPrice <- map["trackHdRentalPrice"]
		trackId <- map["trackId"]
		trackName <- map["trackName"]
		trackNumber <- map["trackNumber"]
		trackPrice <- map["trackPrice"]
		trackRentalPrice <- map["trackRentalPrice"]
		trackTimeMillis <- map["trackTimeMillis"]
		trackViewUrl <- map["trackViewUrl"]
		wrapperType <- map["wrapperType"]		
	}
}
