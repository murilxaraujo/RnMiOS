//
//  RnMServiceTests.swift
//  RnMServiceTests
//
//  Created by Murilo Araujo on 15/11/20.
//

import XCTest
@testable import RnMService

class RnMServiceTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_getAllCharacters_defaultPage() throws {
        let exp = expectation(description: "Returns Characters successfully")
        
        RnMService.character.getAll { (result) in
            switch result {
                case .success(_):
                    exp.fulfill()
                    break;
                case .failure(let error):
                    XCTAssert(false, error.localizedDescription)
                    break
            }
        }
        
        wait(for: [exp], timeout: 10.0)
    }

    func test_getAllCharacters_definedPage() throws {
        let exp = expectation(description: "Returns Characters successfully")
        
        RnMService.character.getAll(in: 2) { (result) in
            switch result {
                case .success(_):
                    exp.fulfill()
                    break;
                case .failure(let error):
                    XCTAssert(false, error.localizedDescription)
                    break
            }
        }
        
        wait(for: [exp], timeout: 10.0)
    }
}
