//
//  CharactersPresenter.swift
//  RnM
//
//  Created by Murilo Araujo on 15/11/20.
//  
//

import Foundation

class CharactersPresenter {

    // MARK: Properties

    weak var view: CharactersView?
    var router: CharactersWireframe?
    var interactor: CharactersUseCase?
}

extension CharactersPresenter: CharactersPresentation {
    // TODO: implement presentation methods
}

extension CharactersPresenter: CharactersInteractorOutput {
    // TODO: implement interactor output methods
}
