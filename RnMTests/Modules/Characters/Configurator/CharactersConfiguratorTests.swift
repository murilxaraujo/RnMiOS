//
//  CharactersCharactersConfiguratorTests.swift
//  RnM
//
//  Created by Murilo Araujo on 15/11/2020.
//  Copyright © 2020 Murilo Araujo. All rights reserved.
//

import XCTest
@testable import RnM

class CharactersModuleConfiguratorTests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testConfigureModuleForViewController() {

        //given
        let viewController = CharactersViewControllerMock()
        let configurator = CharactersModuleConfigurator()

        //when
        configurator.configureModuleForViewInput()

        //then
        XCTAssertNotNil(viewController.output, "CharactersViewController is nil after configuration")
        XCTAssertTrue(viewController.output is CharactersPresenter, "output is not CharactersPresenter")

        let presenter: CharactersPresenter = viewController.output as! CharactersPresenter
        XCTAssertNotNil(presenter.view, "view in CharactersPresenter is nil after configuration")
        XCTAssertNotNil(presenter.router, "router in CharactersPresenter is nil after configuration")
        XCTAssertTrue(presenter.router is CharactersRouter, "router is not CharactersRouter")

        let interactor: CharactersInteractor = presenter.interactor as! CharactersInteractor
        XCTAssertNotNil(interactor.output, "output in CharactersInteractor is nil after configuration")
    }

    class CharactersViewControllerMock: CharactersViewController {

        var setupInitialStateDidCall = false

        override func setupInitialState() {
            setupInitialStateDidCall = true
        }
    }
}
