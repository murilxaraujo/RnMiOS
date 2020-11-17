//
//  CharactersCharactersInteractorInput.swift
//  RnM
//
//  Created by Murilo Araujo on 15/11/2020.
//  Copyright © 2020 Murilo Araujo. All rights reserved.
//

import Foundation
import RnMService

protocol CharactersInteractorInput {
    func getCharacters(at page: Int, completion: @escaping (Result<[RnMCharacter], Error>)->Void)
}
