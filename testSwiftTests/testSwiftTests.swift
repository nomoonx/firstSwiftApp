//
//  testSwiftTests.swift
//  testSwiftTests
//
//  Created by Wuyue Xu on 2016-01-03.
//  Copyright © 2016 ProjectX. All rights reserved.
//

import XCTest
@testable import testSwift

class testSwiftTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPrint(){
        let problem:[[Int]]=[[0,0,0,0,4,0,0,0,0],
                             [0,0,0,9,0,0,0,0,7],
                             [0,0,0,2,0,6,1,3,0],
                             [0,2,6,0,5,0,0,0,4],
                             [9,0,0,3,1,0,0,0,6],
                             [0,0,4,0,0,0,3,9,0],
                             [0,0,2,0,0,7,0,0,0],
                             [0,0,8,0,0,5,0,0,9],
                             [0,6,0,4,9,0,0,5,0]]
        let problem1:[[Int]]=[[0,0,0,0,0,5,8,0,0],
                            [0,9,0,0,0,0,0,0,0],
                            [0,0,7,0,6,0,2,9,5],
                            [0,0,0,0,0,0,0,0,0],
                            [6,0,4,0,2,7,0,0,0],
                            [0,2,9,0,0,0,0,4,0],
                            [0,0,1,9,0,0,0,0,8],
                            [0,8,2,0,7,0,5,0,9],
                            [0,0,5,0,8,2,1,7,0]]
        var result=SudokuSolver.solve(problem1)
        print(result.count)
        for i in 0..<result.count{
            print(result[i])
        }
        
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }
    
}
