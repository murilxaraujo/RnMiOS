//
//  CharactersCharactersViewOutput.swift
//  RnM
//
//  Created by Murilo Araujo on 15/11/2020.
//  Copyright © 2020 Murilo Araujo. All rights reserved.
//
import RnMService

protocol CharactersViewOutput {

    /// Tells the presenter que view has loaded successfully
    func viewIsReady()
    
    
    /// Tells the presenter an item has been selected
    /// - Parameter character: Rick and Morty character
    func hasSelected(character: RnMCharacter)
    
    
    /// Requests to the presenter the next page of contents
    func loadNextPage()
}
