//
//  CharacterRouter.swift
//  RnM
//
//  Created by Murilo Araujo on 15/11/20.
//  
//

import Foundation
import UIKit

class CharacterRouter {

    // MARK: Properties

    weak var view: UIViewController?

    // MARK: Static methods

    static func setupModule() -> CharacterViewController {
        let viewController = UIStoryboard.loadViewController() as CharacterViewController
        let presenter = CharacterPresenter()
        let router = CharacterRouter()
        let interactor = CharacterInteractor()

        viewController.presenter =  presenter

        presenter.view = viewController
        presenter.router = router
        presenter.interactor = interactor

        router.view = viewController

        interactor.output = presenter

        return viewController
    }
}

extension CharacterRouter: CharacterWireframe {
    // TODO: Implement wireframe methods
}
