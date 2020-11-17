//
//  Character.swift
//  RnMService
//
//  Created by Murilo Araujo on 15/11/20.
//

import Foundation

public struct RnMCharacter: Codable, Hashable {
    public let id: Int
    public let name: String
    public let status: String
    public let species: String
    public let type: String
    public let gender: String
    public let image: String
    public let episode: [String]
    public let url: String
    public let created: String
    public let location: RnMLocationReference
    public let origin: RnMLocationReference
}

