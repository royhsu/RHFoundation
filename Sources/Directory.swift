//
//  Directory.swift
//  RHFoundation
//
//  Created by 許郁棋 on 2016/6/27.
//  Copyright © 2016年 Roy Hsu. All rights reserved.
//

import Foundation

enum Directory { case document }

extension Directory {
    
    var path: String {
        
        switch self {
        case .document:
            
            let documentDirectoryPaths = NSSearchPathForDirectoriesInDomains(
                .DocumentDirectory,
                .UserDomainMask,
                true
            )
        
            return documentDirectoryPaths.first!
        }
        
    }
    
    var URL: NSURL {
        
        switch self {
        case .document:
            
            let documentDirectoryURLs =
                NSFileManager.defaultManager().URLsForDirectory(
                    .DocumentDirectory,
                    inDomains: .UserDomainMask
            )
            
            return documentDirectoryURLs.first!
        }
        
    }
    
}
