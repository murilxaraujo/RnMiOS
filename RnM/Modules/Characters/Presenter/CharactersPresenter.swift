//
//  CharactersCharactersPresenter.swift
//  RnM
//
//  Created by Murilo Araujo on 15/11/2020.
//  Copyright © 2020 Murilo Araujo. All rights reserved.
//
import RnMService

class CharactersPresenter: CharactersModuleInput, CharactersViewOutput, CharactersInteractorOutput {

    weak var view: CharactersViewInput!
    var interactor: CharactersInteractorInput!
    var router: CharactersRouterInput!
    private var currentPage = 0
    
    func viewIsReady() {
        view.setupInitialState()
        loadNextPage()
    }
    
    func hasSelected(character: RnMCharacter) {
        let detailedView = CharacterModuleConfigurator().configureModule(with: character)
        Router.push(detailedView)
    }
    
    func loadNextPage() {
        currentPage += 1
        interactor.getCharacters(at: currentPage) { (result) in
            if let characters = try? result.get() {
                self.view.append(characters: characters)
            }
        }
    }
}
