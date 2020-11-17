//
//  PersistServiceTests.swift
//  PersistServiceTests
//
//  Created by Murilo Araujo on 17/11/20.
//

import XCTest
@testable import PersistService

class PersistServiceTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        let persist = PersistService()
        let nome = "Murilo"
        guard let nomeData = nome.data(using: .utf8, allowLossyConversion: false) else {XCTAssert(false, "Could not get data from string");return}
        persist.save(nomeData, for: "nome")
        guard let savedNomeData = persist.retrieve(for: "nome") else {XCTAssert(false, "Could not get persisted data");return}
        let savedNome = String(data: savedNomeData, encoding: .utf8)
        XCTAssertEqual(nome, savedNome)
    }
}
