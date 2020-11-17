//
//  CharacterCharacterPresenterTests.swift
//  RnM
//
//  Created by Murilo Araujo on 15/11/2020.
//  Copyright © 2020 Murilo Araujo. All rights reserved.
//

import XCTest
@testable import RnM
import RnMService

class CharacterPresenterTest: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    class MockInteractor: CharacterInteractorInput {
        func getSections(from character: RnMCharacter) {
            
        }
    }

    class MockRouter: CharacterRouterInput {

    }

    class MockViewController: CharacterViewInput {
        func setupInitialState(with character: RnMCharacter) {
            
        }
        
        func populateTableView(with sections: [CharacterSection]) {
            
        }
        

        func setupInitialState() {

        }
    }
}
