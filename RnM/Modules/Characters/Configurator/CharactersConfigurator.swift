//
//  CharactersCharactersConfigurator.swift
//  RnM
//
//  Created by Murilo Araujo on 15/11/2020.
//  Copyright © 2020 Murilo Araujo. All rights reserved.
//

import UIKit

class CharactersModuleConfigurator {

    func configureModuleForViewInput() -> UIViewController {
        let viewController = CharactersViewController()
        configure(viewController: viewController)
        return viewController
    }

    private func configure(viewController: CharactersViewController) {

        let router = CharactersRouter()

        let presenter = CharactersPresenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = CharactersInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
    }

}
