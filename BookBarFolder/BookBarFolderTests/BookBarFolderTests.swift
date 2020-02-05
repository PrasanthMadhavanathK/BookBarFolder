//
//  BookBarFolderTests.swift
//  BookBarFolderTests
//
//  Created by Prasanth M Krishnadas on 2020-02-05.
//  Copyright © 2020 Prasanth M Krishnadas. All rights reserved.
//

import XCTest
@testable import BookBarFolder

class BookBarFolderTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testBookBar(){
        let bookBar = BookBar(bookMark: [BookMarks()])
        XCTAssertEqual(bookBar.bookMark?[0].link, "https://medium.com/@enricopiovesan/unit-testing-in-swift-tutorial-92daab95246b", "The Url Strings dont match")
    }
    
    func testBookBarWithFolder(){
        let bookBar = BookBar(bookMark: [BookMarks()], folder: [Folder(name: "Folder1")])
        XCTAssertEqual(bookBar.folder?[0].name, "Folder1", "FolderName Does not match")
        XCTAssertEqual(bookBar.folder?.count, 1, "Folder count is equal")
    }
    
    func addBookMarktoBookBar(){
        let bookBar = BookBar()
        let bookMark1 = BookMarks()
        let bookMark2 = BookMarks()
        let bookmarkArray = [bookMark1,bookMark2]
        let bookmarkArrayCount = bookBar.addBookMarks(bookMark: bookmarkArray)
        XCTAssertEqual(bookmarkArrayCount, bookmarkArray.count, "count does not match")
    }

}
