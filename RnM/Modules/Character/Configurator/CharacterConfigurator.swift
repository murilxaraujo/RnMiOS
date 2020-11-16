//
//  CharacterCharacterConfigurator.swift
//  RnM
//
//  Created by Murilo Araujo on 15/11/2020.
//  Copyright © 2020 Murilo Araujo. All rights reserved.
//

import UIKit

class CharacterModuleConfigurator {

    func configureModule() -> UIViewController {
        let viewController = CharacterViewController()
        configure(viewController: viewController)
        return viewController
    }

    private func configure(viewController: CharacterViewController) {

        let router = CharacterRouter()

        let presenter = CharacterPresenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = CharacterInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
    }

}
