//
//  RMRequest.swift
//  RickAndMorty
//
//  Created by Yuri Cunha on 11/01/23.
//

import Foundation

final class RMRequest {
    
    private struct Constants {
        static let baseUrl = "https://rickandmortyapi.com/api"
    }
    
    private let endPoint: RMEndPoint
    private let pathComponents: [String]
    private let queryParameters: [URLQueryItem]
    
    private var urlString: String {
        var string = Constants.baseUrl
        string += "/"
        string += endPoint.rawValue
        
        if !pathComponents.isEmpty {
            pathComponents.forEach {
                string += "/\($0)"
            }
        }
        if !queryParameters.isEmpty {
            string += "?"
            
            let argumentString = queryParameters.compactMap({
                guard let value = $0.value else { return nil }
                return "\($0.name)=\(value)"
            }).joined(separator: "&")
            
            string += argumentString
        }
        
        
        return string
    }
    
    var url: URL? {
        return URL(string: urlString)
        
        
    }
    
    
    public init(endPoint: RMEndPoint, pathComponents: [String] = [],queryParameters: [URLQueryItem] = []) {
        self.endPoint = endPoint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters

    }
    
}
