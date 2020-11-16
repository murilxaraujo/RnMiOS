//
//  Location.swift
//  RnMService
//
//  Created by Murilo Araujo on 15/11/20.
//

import Foundation

public struct RnMLocation: Codable, Hashable {
    let id: Int
    let name: String
    let type: String
    let dimension: String
    let residents: [RnMCharacterReference]
    let url: String
    let created: String
}
