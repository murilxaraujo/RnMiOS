//
//  CharactersCharactersPresenterTests.swift
//  RnM
//
//  Created by Murilo Araujo on 15/11/2020.
//  Copyright © 2020 Murilo Araujo. All rights reserved.
//

import XCTest
@testable import RnM
import RnMService

class CharactersPresenterTest: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    class MockInteractor: CharactersInteractorInput {
        func getCharacters(at page: Int, completion: @escaping (Result<[RnMCharacter], Error>) -> Void) {
            
        }
    }

    class MockRouter: CharactersRouterInput {

    }

    class MockViewController: CharactersViewInput {
        func append(characters: [RnMCharacter]) {
            
        }
        func setupInitialState() {

        }
    }
}
