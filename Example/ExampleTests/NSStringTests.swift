//
//  NSStringTests.swift
//  Example
//
//  Created by 許郁棋 on 2016/6/27.
//  Copyright © 2016年 Roy Hsu. All rights reserved.
//

import XCTest
@testable import Example

class NSStringTests: XCTestCase {
    
    func testAppendingPathComponent() {
        
        let appendingPath = "test"
        
        let filePath = "examples/example"
        let finalFilePath = filePath.stringByAppendingPathComponent(appendingPath)
        let expectedPath = filePath + "/\(appendingPath)"
        
        XCTAssertEqual(finalFilePath, expectedPath)
        
        let URLString = "http://example.com"
        let finalURLString = URLString.stringByAppendingPathComponent(appendingPath)
        let expectedURLString = URLString + "/\(appendingPath)"
        
        XCTAssertNotEqual(finalURLString, expectedURLString)
        
    }
    
    func testAppendingPathExtension() {
        
        let appendingExtension = "txt"
        
        let filePath = "example"
        let finalFilePath = filePath.stringByAppendingPathComponent(appendingExtension)
        let expectedPath = filePath + "/\(appendingExtension)"
        
        XCTAssertEqual(finalFilePath, expectedPath)
        
        let URLString = "http://example"
        let finalURLString = URLString.stringByAppendingPathComponent(appendingExtension)
        let expectedURLString = URLString + "/\(appendingExtension)"
        
        XCTAssertNotEqual(finalURLString, expectedURLString)
        
    }
    
}
