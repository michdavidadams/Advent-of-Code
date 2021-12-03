//
//  dive.swift
//  Advent of Code
//
//  Created by Michael Adams on 12/3/21.
//

import Foundation

// Part 1
func getFinalPositions(plannedCourse: [String]) -> Int {
    var horizontal = 0
    var vertical = 0
    for position in plannedCourse {
        if position.contains("forward") {
            horizontal += Int(String(position.last!))!
        } else if position.contains("down") {
            vertical += Int(String(position.last!))!
        } else if position.contains("up") {
            vertical -= Int(String(position.last!))!
        } else {
            print("Error")
        }
    }
    return horizontal * vertical
}

// Part 2
func getFinalPositionsWithAim(plannedCourse: [String]) -> Int {
    var horizontal = 0
    var vertical = 0
    var aim = 0
    for position in plannedCourse {
        if position.contains("forward") {
            horizontal += Int(String(position.last!))!
            vertical += aim * Int(String(position.last!))!
        } else if position.contains("down") {
            aim += Int(String(position.last!))!
        } else if position.contains("up") {
            aim -= Int(String(position.last!))!
        } else {
            print("Error")
        }
    }
    return horizontal * vertical
}
