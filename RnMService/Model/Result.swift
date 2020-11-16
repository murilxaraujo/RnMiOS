//
//  Result.swift
//  RnMService
//
//  Created by Murilo Araujo on 15/11/20.
//

import Foundation

public struct APIResult<T:Codable>:Codable {
    let info: ResultInfo
    let results: T
}

public struct ResultInfo: Codable, Hashable {
    let count: Int
    let pages: Int
    let next: String?
    let prev: String?
}
