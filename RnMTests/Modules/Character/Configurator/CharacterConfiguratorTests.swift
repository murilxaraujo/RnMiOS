//
//  CharacterCharacterConfiguratorTests.swift
//  RnM
//
//  Created by Murilo Araujo on 15/11/2020.
//  Copyright © 2020 Murilo Araujo. All rights reserved.
//

import XCTest
@testable import RnM

class CharacterModuleConfiguratorTests: XCTestCase {

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
        let viewController = CharacterViewControllerMock()
        let configurator = CharacterModuleConfigurator()

        //when
        configurator.configureModule()

        //then
        XCTAssertNotNil(viewController.output, "CharacterViewController is nil after configuration")
        XCTAssertTrue(viewController.output is CharacterPresenter, "output is not CharacterPresenter")

        let presenter: CharacterPresenter = viewController.output as! CharacterPresenter
        XCTAssertNotNil(presenter.view, "view in CharacterPresenter is nil after configuration")
        XCTAssertNotNil(presenter.router, "router in CharacterPresenter is nil after configuration")
        XCTAssertTrue(presenter.router is CharacterRouter, "router is not CharacterRouter")

        let interactor: CharacterInteractor = presenter.interactor as! CharacterInteractor
        XCTAssertNotNil(interactor.output, "output in CharacterInteractor is nil after configuration")
    }

    class CharacterViewControllerMock: CharacterViewController {

        var setupInitialStateDidCall = false

        override func setupInitialState() {
            setupInitialStateDidCall = true
        }
    }
}
