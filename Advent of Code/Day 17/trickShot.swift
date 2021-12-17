//
//  trickShot.swift
//  Advent of Code
//
//  Created by Michael Adams on 12/17/21.
//

import Foundation

// MARK: - Part 1
func findInitialVelocity(targetArea: [String: [Int]]) {
    var probe = [0,0]
    var velocity = [0,0]
    var pastYPoints = [0]
    var highestY: Int?
    var targetAreaPassed = false
    
    for x in -100...100 {
        pastYPoints.removeAll()
        for y in -100...100 {
            pastYPoints.removeAll()
            velocity = [x,y]
            probe = [x,y]
            targetAreaPassed = false
            pastYPoints.append(y)
            
            while targetAreaPassed == false {
                //                print(x)
                //                print(y)
                //                print(velocity)
                //                print(probe)
                
                // Velocity for x
                if velocity[0] > 0 {
                    velocity[0] -= 1
                } else if velocity[0] < 0 {
                    velocity[0] += 1
                }
                
                // Velocity for y
                velocity[1] -= 1
                
                // Probe location
                probe[0] += velocity[0]
                probe[1] += velocity[1]
                pastYPoints.append(probe[1])
                
                // Probe within target area
                if (probe[0] >= targetArea["x"]![0] && probe[0] <= targetArea["x"]![1] && probe[1] <= targetArea["y"]![1] && probe[1] >=  targetArea["y"]![0]) {
                    if highestY == nil {
                        highestY = pastYPoints.max()
                    }
                    for point in pastYPoints {
                        if point > highestY! {
                            highestY = point
                        }
                    }
                }
                
                // Probe exceeded target area
                if (probe[1] < targetArea["y"]![1]) {
                    targetAreaPassed = true
                }
            }
        }
        
        print("Highest y \(highestY ?? 0)")
    }
}
