//
//  LinesRepositoryTest.swift
//  madrid-moves-iosTests
//
//  Created by David Guerrero on 26/04/2020.
//  Copyright © 2020 David Guerrero. All rights reserved.
//

import XCTest
@testable import madrid_moves_ios

class LinesRepositoryTest: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_given_ValidNetworkResponse_when_GetLines_then_ReturnValidLinesList() {
        let remoteService = EmtRemoteService()
        let repository = LinesRepository(remoteService: remoteService)
        
        remoteService.login(email: "david.guerrero@quoders.com", pass: "oisi28Emt$")
        let lines = repository.getLines()
        
        XCTAssertFalse(lines.isEmpty)
    }

}
