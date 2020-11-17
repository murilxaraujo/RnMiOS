//
//  CharacterCharacterPresenter.swift
//  RnM
//
//  Created by Murilo Araujo on 15/11/2020.
//  Copyright © 2020 Murilo Araujo. All rights reserved.
//
import RnMService

class CharacterPresenter: CharacterModuleInput, CharacterViewOutput, CharacterInteractorOutput {

    weak var view: CharacterViewInput!
    var interactor: CharacterInteractorInput!
    var router: CharacterRouterInput!
    var character: RnMCharacter?
    
    func viewIsReady() {
        if let character = character {
            view.setupInitialState(with: character)
            interactor.getSections(from: character)
        }
        
    }
    
    func setView(sections: [CharacterSection]) {
        view.populateTableView(with: sections)
    }
    
    func hasMarkedCharacterAsFavorite() {
        
    }
}
