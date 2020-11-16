//
//  RnMEpisode.swift
//  RnMService
//
//  Created by Murilo Araujo on 15/11/20.
//

import Foundation

public struct RnMEpisode: Codable, Hashable {
    let id: Int
    let name: String
    let air_date: String
    let episode: String
    let characters: [RnMCharacterReference]
    let url: String
    let created: String
}
