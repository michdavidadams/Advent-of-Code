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
    
    var smallestFuelAmount = 0
    let demCrabs = crabHorizontalPositions
    
    for mainCrab in crabHorizontalPositions {
        var fuelTotal = 0
        for otherCrabs in demCrabs {
            if otherCrabs > mainCrab {
                for i in 1...(otherCrabs - mainCrab) {
                    fuelTotal += i
                }
            } else if mainCrab > otherCrabs {
                for i in 1...(mainCrab - otherCrabs) {
                    fuelTotal += i
                }
            } else {
            }
            
            if mainCrab == 2 {
                print(fuelTotal)
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
