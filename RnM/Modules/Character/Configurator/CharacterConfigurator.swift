//
//  CharacterCharacterConfigurator.swift
//  RnM
//
//  Created by Murilo Araujo on 15/11/2020.
//  Copyright © 2020 Murilo Araujo. All rights reserved.
//

import UIKit
import RnMService

class CharacterModuleConfigurator {

    func configureModule(with character: RnMCharacter) -> UIViewController {
        let viewController = CharacterViewController()
        configure(viewController: viewController, with: character)
        return viewController
    }

    private func configure(viewController: CharacterViewController, with character: RnMCharacter) {

        let router = CharacterRouter()

        let presenter = CharacterPresenter()
        presenter.view = viewController
        presenter.router = router
        presenter.character = character
        
        let interactor = CharacterInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
    }

}
