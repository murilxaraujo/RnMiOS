//
//  CharacterCharacterPresenter.swift
//  RnM
//
//  Created by Murilo Araujo on 15/11/2020.
//  Copyright © 2020 Murilo Araujo. All rights reserved.
//

class CharacterPresenter: CharacterModuleInput, CharacterViewOutput, CharacterInteractorOutput {

    weak var view: CharacterViewInput!
    var interactor: CharacterInteractorInput!
    var router: CharacterRouterInput!

    func viewIsReady() {

    }
}
