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
func overlappingLinesTwo(linesOfVents: [[[Int]]]) {
    var map = Array(repeating: Array(repeating:0, count: 1000), count: 1000)
    var totalOverlaps = 0
    
    for lineSegment in linesOfVents {
        let x1 = lineSegment[0][0]
        let x2 = lineSegment[1][0]
        let y1 = lineSegment[0][1]
        let y2 = lineSegment[1][1]
        
        // Vertical line
        if x1 == x2 && y1 != y2 {
            if y1 - y2 > 0 {
                //print(lineSegment)
                for i in y2...y1 {
                    //print("\(x1),\(i)")
                    map[i][x1] += 1
                }
            } else if y2 - y1 > 0 {
                print(lineSegment)
                for i in y1...y2 {
                    print("\(x1),\(i)")
                    map[i][x1] += 1
                }
            } else {
                map[y1][x1] += 1
                map[y2][x2] += 1
            }
            
            // Horizontal line
        } else if y1 == y2 && x1 != x2 {
            if x1 - x2 > 0 {
                //print(lineSegment)
                for i in x2...x1 {
                    //print("\(i),\(y1)")
                    map[y1][i] += 1
                }
            } else if x2 - x1 > 0 {
                //print(lineSegment)
                for i in x1...x2 {
                    //print("\(y1),\(i)")
                    map[y1][i] += 1
                }
            } else {
                map[y1][x1] += 1
                map[y2][x2] += 1
            }
            
            // Diagonal line: 9,7 -> 7,9
        } else if (x1 == y2) && (y1 == x2) {
            if x1 - x2 > 0 {
                //print(lineSegment)
                for i in x2...x1 {
                    //print("\(i),\(y2 - i)")
                    map[y2 - i][i] += 1
                }
            } else if x2 - x1 > 0 {
                //print(lineSegment)
                for i in x1...x2 {
                    //print("\(y1 - i),\(i)")
                    map[y1 - i][i] += 1
                }
            } else {
                map[y1][x1] += 1
            }
            
            // Diagonal line: 1,1 -> 3,3
        } else if (x1 == y1) && (x2 == y2) {
            if x1 - x2 > 0 {
                //print(lineSegment)
                for i in x2...x1 {
                    //print("\(i),\(i)")
                    map[i][i] += 1
                }
            } else if x2 - x1 > 0 {
                //print(lineSegment)
                for i in x1...x2 {
                    //print("\(i),\(i)")
                    map[i][i] += 1
                }
            } else {
                map[y1][x1] += 1
            }
            
            // Diagonal line: 6,4 -> 2,0
        } else if (x1 - x2) == (y1 - y2) {
            if y1 - y2 > 0 {
                //print(lineSegment)
                for i in y2...y1 {
                    //print("\(i + 2),\(i)")
                    map[i][i + 2] += 1
                }
            } else if y2 - y1 > 0 {
                //print(lineSegment)
                for i in y1...y2 {
                    //print("\(i),\(i + 2)")
                    map[i + 2][i] += 1
                }
            } else {
                map[y1][x1] += 1
            }
            
            // Diagonal line: 5,5 -> 8,2
        } else if (x2 - x1) == (y1 - y2) {
            if y1 - y2 > 0 {
                //print(lineSegment)
                for i in y2...y1 {
                    //print("\(x2 - i + 2),\(i)")
                    map[i][x2 - i + 2] += 1
                }
            } else if y2 - y1 > 0 {
                print(lineSegment)
                for i in y1...y2 {
                    print("\(i),\(x2 - i + 2)")
                    map[x2 - i + 2][i] += 1
                }
            } else {
                map[y1][x1] += 1
            }
        }
    }
    

    for coordinates in map {
        print(coordinates)
        for coordinate in coordinates {
            if coordinate >= 2 {
                totalOverlaps += 1
            } else {
            }
        }
    }
    print(totalOverlaps)
}
