//
//  CharactersCharactersInteractor.swift
//  RnM
//
//  Created by Murilo Araujo on 15/11/2020.
//  Copyright © 2020 Murilo Araujo. All rights reserved.
//
import RnMService

class CharactersInteractor: CharactersInteractorInput {
    
    weak var output: CharactersInteractorOutput!

    func getCharacters(at page: Int, completion: @escaping (Result<[RnMCharacter], Error>) -> Void) {
        RnMService.character.getAll(in: page, completion: completion)
    }
}
