//
//  syntaxScoring.swift
//  Advent of Code
//
//  Created by Michael Adams on 12/10/21.
//

import Foundation

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
