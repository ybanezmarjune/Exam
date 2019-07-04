//
//  NetworkManager.swift
//  NetworkManager
//
//  Created by chonex on 4/7/19.
//  Copyright © 2019 Marjune. All rights reserved.
//

import Foundation
import ObjectMapper
import RxSwift
import RxAlamofire

public class NetworkManager<T: ImmutableMappable> {
    var scheduler: SerialDispatchQueueScheduler!
    var apiUrl: URL!
    public init() {
        scheduler = MainScheduler.asyncInstance
        apiUrl    = URL(string: Config.api)
    }
}

// MARK: - Alamofire request
extension NetworkManager {
    /// I only used "GET" method as static on this request
    public func request() -> Observable<T> {
        return RxAlamofire.requestData(.get, apiUrl)
            .debug()
            .observeOn(scheduler)
            .map(processData)
    }
}

// MARK: - Reponse handler
extension NetworkManager {
    fileprivate func processData(response: HTTPURLResponse, data: Data) throws -> T {
        guard let json = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] else {
            throw NSError(
                domain: "",
                code: -1,
                userInfo: [NSLocalizedDescriptionKey: "ObjectMapper can't mapping"]
            )
        }
        if response.statusCode >= 304 {
            throw NSError(
                domain: (response.url?.absoluteString ?? ""),
                code: response.statusCode,
                userInfo: [NSLocalizedDescriptionKey: (json["error"] as? [String: String])?.first?.value ?? json]
            )
        }
        /// from json object to ImmutableMappable model
        
        return  try Mapper<T>().map(JSON: json)
    }
}
