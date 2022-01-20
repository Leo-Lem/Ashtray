//
//  AshtrayTests.swift
//  AshtrayTests
//
//  Created by Leopold Lemmermann on 17.01.22.
//

import XCTest
@testable import Ashtray

class AshtrayTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    //MARK: - test model objects
    func testGettingEntryIDFromDate() {
        let id = try? Entry.getIDFromDate(Date())
        
        XCTAssertNotNil(id)
    }
    
    func testIntializingEntryFromDate() {
        XCTAssertNoThrow(try Entry(Date()))
    }
    
    //MARK: - test view logic
    
    
    //MARK: - test controllers
    
    //MARK: state controller
    func testSavingEntries() {
        let stateController = StateController()
        let entry = TestData.entry
        stateController.entries.append(entry)
        
        XCTAssertNoThrow(try stateController.save())
    }
    
    
    func testLoadingEntries() {
        let stateController = StateController()
        
        XCTAssertNotNil(try? stateController.load())
    }
}
