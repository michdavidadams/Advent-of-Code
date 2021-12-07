//
//  hydrothermalVenture.swift
//  Advent of Code
//
//  Created by Michael Adams on 12/6/21.
//

import Foundation

// MARK: - Part 1
func overlappingLines(linesOfVents: [[[Int]]]) {
    var map = Array(repeating: Array(repeating:0, count: 1000), count: 1000)
    var totalOverlaps = 0
    var test = 0
    
    
    for lineSegment in linesOfVents {
        let x1 = lineSegment[0][0]
        let x2 = lineSegment[1][0]
        let y1 = lineSegment[0][1]
        let y2 = lineSegment[1][1]
        if x1 == x2 && y1 != y2 {
            if y1 - y2 > 0 {
                for i in y2...y1 {
                    map[x1][i] += 1
                    test += 1
                }
            } else if y2 - y1 > 0 {
                for i in y1...y2 {
                    map[x1][i] += 1
                    test += 1
                }
            } else {
                map[x1][y1] += 1
                test += 1
            }
            
        } else if y1 == y2 && x1 != x2 {
            if x1 - x2 > 0 {
                for i in x2...x1 {
                    map[i][y1] += 1
                    test += 1
                }
            } else if x2 - x1 > 0 {
                for i in x1...x2 {
                    map[i][y1] += 1
                    test += 1
                }
            } else {
                map[x1][y1] += 1
                test += 1
            }
        } else if y1 == y2 && x1 == x2 {
            map[x1][y1] += 1
            test += 1
        }
    }

    for coordinates in map {
        for coordinate in coordinates {
            if coordinate >= 2 {
                totalOverlaps += 1
            } else {
                
            }
        }
    }
    print(totalOverlaps)
    print(test)
}

// MARK: - Part 2
func overlappingLines2(linesOfVents: [[[Int]]]) {
    var map = Array(repeating: Array(repeating:0, count: 1000), count: 1000)
    var totalOverlaps = 0
    var test = 0
    var xMap: [Int] = []
    var yMap: [Int] = []
    var index = 0
    
    for lineSegment in linesOfVents {
        let x1 = lineSegment[0][0]
        let x2 = lineSegment[1][0]
        let y1 = lineSegment[0][1]
        let y2 = lineSegment[1][1]
        if x1 == x2 && y1 != y2 {
            if y1 - y2 > 0 {
                for i in y2...y1 {
                    map[x1][i] += 1
                    test += 1
                }
            } else if y2 - y1 > 0 {
                for i in y1...y2 {
                    map[x1][i] += 1
                    test += 1
                }
            } else {
                map[x1][y1] += 1
                test += 1
            }
            
        } else if y1 == y2 && x1 != x2 {
            if x1 - x2 > 0 {
                for i in x2...x1 {
                    map[i][y1] += 1
                    test += 1
                }
            } else if x2 - x1 > 0 {
                for i in x1...x2 {
                    map[i][y1] += 1
                    test += 1
                }
            } else {
                map[x1][y1] += 1
                test += 1
            }
        } else if (x1 == y2) && (x1 == x2) {
            map[x1][y1] += 1
            test += 1
        } else if (x1 == x2) && (y1 == y2) {
            if x1 > x2 {
                for x in x2...x1 {
                    
                }
                if y1 > y2 {
                    
                } else if y2 > y1 {
                    
                }
            } else if x2 > x1 {
                
            }
        }
    }
    

    for coordinates in map {
        for coordinate in coordinates {
            if coordinate >= 2 {
                totalOverlaps += 1
            } else {
                
            }
        }
    }
    print(totalOverlaps)
    print(test)
}
