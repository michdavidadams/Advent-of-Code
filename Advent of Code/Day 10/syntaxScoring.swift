//
//  syntaxScoring.swift
//  Advent of Code
//
//  Created by Michael Adams on 12/10/21.
//

import Foundation

// For finding middle of array
extension Array {
    var middle: Element? {
        guard count != 0 else { return nil }
        let middleIndex = (count > 1 ? count - 1 : count) / 2
        return self[middleIndex]
    }
}

// MARK: - Part 1
func firstIllegalCharacter(navigationSubsystem: [String]) {
    var lineComplete = false
    var expectedCharacters = ""
    var points = 0
    print(navigationSubsystem.count)
    
    for line in navigationSubsystem {
        expectedCharacters = ""
        lineComplete = false
        for char in line.indices {
            if lineComplete == false {
                if line[char] == "<" || line[char] == "[" || line[char] == "(" || line[char] == "{" {
                    switch line[char] {
                    case "<":
                        expectedCharacters.append(">")
                    case "[":
                        expectedCharacters.append("]")
                    case "(":
                        expectedCharacters.append(")")
                    case "{":
                        expectedCharacters.append("}")
                    default:
                        return
                    }
                } else if line[char] == ">" || line[char] == "]" || line[char] == ")" || line[char] == "}" {
                    if line[char] == expectedCharacters.last {
                        expectedCharacters.removeLast()
                    } else {
                        print("First illegal character for line \(line): \(line[char]), was expecting \(String(describing: expectedCharacters.first))")
                        switch line[char] {
                        case ">":
                            points += 25137
                        case "]":
                            points += 57
                        case ")":
                            points += 3
                        case "}":
                            points += 1197
                        default:
                            print("error")
                        }
                        lineComplete = true
                    }
                }
            }
        }
    }
    
    print(points)
}

// MARK: - Part 2
func completeIncorrectLines(navigationSubsystem: [String]) {
    var lineComplete = false
    var expectedCharacters = ""
    var linePoints = 0
    var points: [Int] = []
    print(navigationSubsystem.count)
    
    for line in navigationSubsystem {
        expectedCharacters = ""
        lineComplete = false
        linePoints = 0
        for char in line.indices {
            if lineComplete == false {
                if line[char] == "<" || line[char] == "[" || line[char] == "(" || line[char] == "{" {
                    switch line[char] {
                    case "<":
                        expectedCharacters.append(">")
                    case "[":
                        expectedCharacters.append("]")
                    case "(":
                        expectedCharacters.append(")")
                    case "{":
                        expectedCharacters.append("}")
                    default:
                        return
                    }
                } else if line[char] == ">" || line[char] == "]" || line[char] == ")" || line[char] == "}" {
                    if line[char] == expectedCharacters.last {
                        expectedCharacters.removeLast()
                    } else {
                        lineComplete = true
                    }
                }
            }
        }
        let reversed = String(expectedCharacters.reversed())
        expectedCharacters = reversed as String
        if (expectedCharacters.contains(">") || expectedCharacters.contains("]") || expectedCharacters.contains(")") || expectedCharacters.contains("}")) && lineComplete == false {
            for char in expectedCharacters.indices {
                linePoints *= 5
                switch expectedCharacters[char] {
                case ">":
                    linePoints += 4
                case "]":
                    linePoints += 2
                case ")":
                    linePoints += 1
                case "}":
                    linePoints += 3
                default:
                    print("error")
                }
            }
            points.append(linePoints)
        } else {
        }
    }
    points.sort()
    print("All points: \(points)")
    print("Middle points: \(points.middle!)")
}
