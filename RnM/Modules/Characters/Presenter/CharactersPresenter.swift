//
//  CharactersCharactersPresenter.swift
//  RnM
//
//  Created by Murilo Araujo on 15/11/2020.
//  Copyright © 2020 Murilo Araujo. All rights reserved.
//

class CharactersPresenter: CharactersModuleInput, CharactersViewOutput, CharactersInteractorOutput {
    
    weak var view: CharactersViewInput!
    var interactor: CharactersInteractorInput!
    var router: CharactersRouterInput!

    func viewIsReady() {
        
    }
    
    func hasSelectedCharacter(at index: Int) {
        
    }
}
