//
//  RMServices.swift
//  RickAndMorty
//
//  Created by Yuri Cunha on 11/01/23.
//

import Foundation


final class RMService {
    static let shsred = RMService()
    
    private init() {
        
    }
    
    public func execute(_ request: RMRequest, completion: @escaping ()-> Void)
}
