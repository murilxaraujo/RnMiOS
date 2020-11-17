//
//  File.swift
//  RnM
//
//  Created by Murilo Araujo on 17/11/20.
//

import Foundation
import PersistService

public class FavoritesService {
    public static let shared = FavoritesService()
    private let persist = PersistService()
    private lazy var favoriteCharacters: Set<Int> = getSavedFavoritedCharacters()
    
    
    private func getSavedFavoritedCharacters() -> Set<Int> {
        guard let data = persist.retrieve(for: "favchars"),
              let arrayString = String(data: data, encoding: .utf8) else {
            return Set<Int>()
        }
        let array = arrayString.split(separator: ",").map { (value) -> Int in
            return Int(value) ?? 0
        }
        let set = Set(array)
        return set
    }
    
    public func favCharacter(for id: Int) {
        favoriteCharacters.insert(id)
    }
    
    public func hasFavCharacter(for id: Int) -> Bool {
        return favoriteCharacters.contains(id)
    }
    
    public func removeFav(for id: Int) {
        favoriteCharacters.remove(id)
    }
    
    public func saveFavoritedCharacters() {
        var finalString = ""
        favoriteCharacters.forEach { (value) in
            finalString += "\(value),"
        }
        finalString.popLast()
        guard let stringData = finalString.data(using: .utf8) else {return}
        persist.save(stringData, for: "favchars")
    }
}
