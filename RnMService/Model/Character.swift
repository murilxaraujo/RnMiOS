//
//  Character.swift
//  RnMService
//
//  Created by Murilo Araujo on 15/11/20.
//

import Foundation

public struct RnMCharacter: Codable, Hashable {
    let name: String
    let status: String
    let species: String
    let type: String
    let gender: String
    let image: String
    let episode: [String]
    let url: String
    let created: String
    let location: RnMLocationReference
    let origin: RnMLocationReference
}

