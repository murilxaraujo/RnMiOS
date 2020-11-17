//
//  CharactersCharactersViewInput.swift
//  RnM
//
//  Created by Murilo Araujo on 15/11/2020.
//  Copyright © 2020 Murilo Araujo. All rights reserved.
//
import RnMService

protocol CharactersViewInput: class {

    
    /// Tells the view to setup initial state after loading
    func setupInitialState()
    
    
    /// Tells the view to add new characters to the tableview
    /// - Parameter characters: Aray of Rick and Morty characters
    func append(characters: [RnMCharacter])
}
