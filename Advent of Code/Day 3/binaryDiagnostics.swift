//
//  binaryDiagnostics.swift
//  Advent of Code
//
//  Created by Michael Adams on 12/3/21.
//

import Foundation

func getPowerConsumption(diagnosticReport: [String]) {
    var gammaRateBinary = ""
    var epsilonRateBinary = ""
    
    // Most common bits
    var numberOfZeros = 0
    var numberOfOnes = 0
    
    var passthroughs = 0
    while passthroughs < 12 {
        
        for item in diagnosticReport {
            let char = item[item.index(item.startIndex, offsetBy: passthroughs)]
            if char == "0" {
                numberOfZeros += 1
            } else if char == "1" {
                numberOfOnes += 1
            } else {
                print("error")
            }
        }
        if numberOfZeros > numberOfOnes {
            gammaRateBinary.append("0")
            epsilonRateBinary.append("1")
            numberOfZeros = 0
            numberOfOnes = 0
        } else if numberOfOnes > numberOfZeros {
            gammaRateBinary.append("1")
            epsilonRateBinary.append("0")
            numberOfZeros = 0
            numberOfOnes = 0
        } else {
            print("error")
        }
        
        passthroughs += 1
    }
    
    // Convert binary to decimal
    func binaryToDecimal(num: String) -> Int {
        let number = Array(num)
        // Assuming that number contains 0,1s
        // Used to store result
        var result: Int = 0
        var bit: Int = 0
        var n: Int = number.count - 1
        // Execute given number in reverse order
        while (n >= 0)
        {
            if (number[n] == "1")
            {
                // When get binary 1
                result += (1 << (bit))
            }
            n = n - 1
            // Count number of bits
            bit += 1
        }
        // Display decimal result
        return result
    }
    
    let gammaRateDecimal: Int = binaryToDecimal(num: gammaRateBinary)
    let epsilonRateDecimal: Int = binaryToDecimal(num: epsilonRateBinary)
    
    print(gammaRateDecimal * epsilonRateDecimal)
}
