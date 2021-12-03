//
//  dayOne.swift
//  Advent of Code
//
//  Created by Michael Adams on 12/3/21.
//

import Foundation

// MARK: - Part 1
func getIncreases(depthMeasurements: [Int]) -> Int {
    var depthIncreases = 0
    var previousMeasurement = depthMeasurements[0]
    for measurement in depthMeasurements {
        if measurement > previousMeasurement {
            depthIncreases += 1
        } else {
        }
        previousMeasurement = measurement
    }
    return depthIncreases
}

// MARK: - Part 2
func threeMeasurementWindow(depthMeasurements: [Int]) -> Int {
    var depthIncreases = 0
    var index = 0
    let lastIndex = depthMeasurements.endIndex - 3
    for _ in depthMeasurements {
        guard index != lastIndex else {
            return depthIncreases
        }
        let sumOne = depthMeasurements[index] + depthMeasurements[index + 1] + depthMeasurements[index + 2]
        let sumTwo = depthMeasurements[index + 1] + depthMeasurements[index + 2] + depthMeasurements[index + 3]
        if sumTwo > sumOne {
            depthIncreases += 1
        } else {
        }
        index += 1
    }
    return depthIncreases
}
