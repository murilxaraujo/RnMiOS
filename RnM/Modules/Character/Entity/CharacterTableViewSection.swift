//
//  CharacterTableViewSection.swift
//  RnM
//
//  Created by Murilo Araujo on 17/11/20.
//

import Foundation

struct CharacterSection {
    var items: [CharacterItem]
    var sectionCellID: String
}

struct CharacterItem {
    var key: String
    var value: String
}
