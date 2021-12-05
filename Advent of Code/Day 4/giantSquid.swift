//
//  giantSquid.swift
//  Advent of Code
//
//  Created by Michael Adams on 12/4/21.
//

import Foundation

func winningBoard(drawnNumbers: [Int], bingoBoards: [[[Int]]]) {
    // Has a bingo card been completed yet?
    var bingoCardCompleted = false
    
    var pastDrawnNumbers: [Int] = [drawnNumbers[0]]
    var index = 0
    var sum = 0
    
    while bingoCardCompleted == false {
        pastDrawnNumbers.append(drawnNumbers[index])
        for board in bingoBoards {
            for i in 0...4 {
                if pastDrawnNumbers.contains(board[0][i]) && pastDrawnNumbers.contains(board[1][i]) && pastDrawnNumbers.contains(board[2][i]) && pastDrawnNumbers.contains(board[3][i]) && pastDrawnNumbers.contains(board[4][i]) {
                    print("Winning column: \(i)")
                    print("Winning board: \(board)")
                    print("Winning numbers: \(pastDrawnNumbers)")
                    for row in board {
                        for i in 0...4 {
                            if pastDrawnNumbers.contains(row[i]) {
                            } else {
                                sum += row[i]
                            }
                        }
                    }
                    print(sum * pastDrawnNumbers.last!)
                    bingoCardCompleted = true
                } else if pastDrawnNumbers.contains(board[i][0]) && pastDrawnNumbers.contains(board[i][1]) && pastDrawnNumbers.contains(board[i][2]) && pastDrawnNumbers.contains(board[i][3]) && pastDrawnNumbers.contains(board[i][4]) {
                    print("Winning row: \(i)")
                    print("Winning board: \(board)")
                    print("Winning numbers: \(pastDrawnNumbers)")
                    for row in board {
                        for i in 0...4 {
                            if pastDrawnNumbers.contains(row[i]) {
                            } else {
                                sum += row[i]
                            }
                        }
                    }
                    print(sum * pastDrawnNumbers.last!)
                    bingoCardCompleted = true
                } else {
                }
            }
            
        }
        index += 1
    }
}
