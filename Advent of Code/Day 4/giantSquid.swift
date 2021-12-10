//
//  giantSquid.swift
//  Advent of Code
//
//  Created by Michael Adams on 12/4/21.
//

import Foundation

// MARK: - Part 1
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

// MARK: - Part 2
func lastBoard(drawnNumbers: [Int], bingoBoards: [[[Int]]]) {
    
    var pastDrawnNumbers: [Int] = [drawnNumbers[0]]
    var index = 0
    var sum = 0
    var totalCardsWon = 0
    var boardIndices: [Int] = [0000009]
    var boardIndex = 0
    print("There are \(bingoBoards.count) boards.")
    
    while boardIndices.count < bingoBoards.count {
        boardIndex = 0
        totalCardsWon = 0
        pastDrawnNumbers.append(drawnNumbers[index])
        
        for board in bingoBoards {
            sum = 0
            for i in 0...4 {
                if pastDrawnNumbers.contains(board[0][i]) && pastDrawnNumbers.contains(board[1][i]) && pastDrawnNumbers.contains(board[2][i]) && pastDrawnNumbers.contains(board[3][i]) && pastDrawnNumbers.contains(board[4][i]) {
                    for row in board {
                        for i in 0...4 {
                            if pastDrawnNumbers.contains(row[i]) {
                            } else {
                                sum += row[i]
                            }
                        }
                    }
                    
                    if boardIndices.contains(boardIndex) {
                        totalCardsWon += 1
                    } else {
                        boardIndices.append(boardIndex)
                        print("Board \(boardIndex), Sum: \(sum), Last number: \(pastDrawnNumbers.last!)")
                        totalCardsWon += 1
                    }
                } else if pastDrawnNumbers.contains(board[i][0]) && pastDrawnNumbers.contains(board[i][1]) && pastDrawnNumbers.contains(board[i][2]) && pastDrawnNumbers.contains(board[i][3]) && pastDrawnNumbers.contains(board[i][4]) {
                    for row in board {
                        for i in 0...4 {
                            if pastDrawnNumbers.contains(row[i]) {
                            } else {
                                sum += row[i]
                            }
                        }
                    }
                    if boardIndices.contains(boardIndex) {
                    } else {
                        boardIndices.append(boardIndex)
                        print("Board \(boardIndex), Sum: \(sum), Last number: \(pastDrawnNumbers.last!)")
                    }
                } else {
                }
            }
        
            boardIndex += 1
        }
        index += 1
        totalCardsWon = boardIndices.count
        print("Boards completed: \(boardIndices.count - 1).")
    }
    print("Last board: \(boardIndices.last!), Last drawn number: \(pastDrawnNumbers.last!)")
    print("Boards completed: \(boardIndices.count - 1).")
    
}
