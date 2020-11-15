//
//  CharactersRouter.swift
//  RnM
//
//  Created by Murilo Araujo on 15/11/20.
//  
//

import Foundation
import UIKit

class CharactersRouter {

    // MARK: Properties

    weak var view: UIViewController?

    // MARK: Static methods

    static func setupModule() -> CharactersViewController {
        let viewController = CharactersViewController()
        let presenter = CharactersPresenter()
        let router = CharactersRouter()
        let interactor = CharactersInteractor()

        viewController.presenter =  presenter

        presenter.view = viewController
        presenter.router = router
        presenter.interactor = interactor

        router.view = viewController

        interactor.output = presenter

        return viewController
    }
}

extension CharactersRouter: CharactersWireframe {
    // TODO: Implement wireframe methods
}
