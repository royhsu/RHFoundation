//
//  NSURLTests.swift
//  RHFoundation
//
//  Created by 許郁棋 on 2016/6/27.
//  Copyright © 2016年 Roy Hsu. All rights reserved.
//

import XCTest
@testable import RHFoundation

class NSURLTests: XCTestCase {
    
    func testFileURLWithSpecificFileAndExtension() {
        
        let filename = "test"
        let fileExtension = "txt"
        
        let fileURL = NSURL(filename: filename, withExtension: fileExtension, in: .document)
        
        let expectedFilePath = Directory.document.path + "/\(filename).\(fileExtension)"
        
        XCTAssertEqual(fileURL.path!, expectedFilePath)
        
    }
    
}
