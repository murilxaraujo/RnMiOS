//
//  CharacterPresenter.swift
//  RnM
//
//  Created by Murilo Araujo on 15/11/20.
//  
//

import Foundation

class CharacterPresenter {

    // MARK: Properties

    weak var view: CharacterView?
    var router: CharacterWireframe?
    var interactor: CharacterUseCase?
}

extension CharacterPresenter: CharacterPresentation {
    // TODO: implement presentation methods
}

extension CharacterPresenter: CharacterInteractorOutput {
    // TODO: implement interactor output methods
}
