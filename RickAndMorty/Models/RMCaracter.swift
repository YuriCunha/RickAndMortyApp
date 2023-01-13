//
//  RMCaracter.swift
//  RickAndMorty
//
//  Created by Yuri Cunha on 23/12/22.
//

import Foundation

struct RMCaracter: Codable {
    let id: Int
    let name: String
    let status: RMCaracterStatus
    let species: String
    let type: String
    let gender: RMCaracterGender
    let origin: RMOrigin
    let location: RMSingleLocation
    let image: String
    let episode: [String]
    let url: String
    let created: Date
}


