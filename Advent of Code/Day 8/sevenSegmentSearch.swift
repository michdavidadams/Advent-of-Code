//
//  sevenSegmentSearch.swift
//  Advent of Code
//
//  Created by Michael Adams on 12/8/21.
//

import Foundation

// MARK: - Part 1
// 1, 4, 7, 8
func easyDigits(signalDigits: [[[String]]]) {
    
    var timesAppears = 0
    
    for singleEntry in signalDigits {
        for input in singleEntry[1] {
            
            if input.count == 2 || input.count == 4 || input.count == 3 || input.count == 7 {
                timesAppears += 1
            }
        }
    }
    print(timesAppears)
}
