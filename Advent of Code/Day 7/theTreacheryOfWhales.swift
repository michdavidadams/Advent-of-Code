//
//  theTreacheryOfWhales.swift
//  Advent of Code
//
//  Created by Michael Adams on 12/7/21.
//

import Foundation

// MARK: - Part 1
func moveCrabs(crabHorizontalPositions: [Int]) {
    
    var smallestFuelAmount = 0
    
    for mainCrab in crabHorizontalPositions {
        var fuelTotal = 0
        for otherCrabs in crabHorizontalPositions {
            if otherCrabs > mainCrab {
                fuelTotal += (otherCrabs - mainCrab)
            } else if mainCrab > otherCrabs {
                fuelTotal += (mainCrab - otherCrabs)
            } else {
            }
        }
        if smallestFuelAmount == 0 {
            smallestFuelAmount = fuelTotal
        }
        if fuelTotal < smallestFuelAmount {
            smallestFuelAmount = fuelTotal
        }
    }
    
    print(smallestFuelAmount)
}

// MARK: - Part 2
func moveCrabs2(crabHorizontalPositions: [Int]) {
    
    let allPositions = crabHorizontalPositions.max()
    var smallestFuelAmount = 0
    
    for position in 0...allPositions! {
        var fuelTotal = 0
        for crab in crabHorizontalPositions {
            if crab > position {
                for i in 1...(crab - position) {
                    fuelTotal += i
                }
            } else if position > crab {
                for i in 1...(position - crab) {
                    fuelTotal += i
                }
            }
        }
        if smallestFuelAmount == 0 {
            smallestFuelAmount = fuelTotal
        }
        if fuelTotal < smallestFuelAmount {
            smallestFuelAmount = fuelTotal
        }
        
    }
    
    print(smallestFuelAmount)
}
